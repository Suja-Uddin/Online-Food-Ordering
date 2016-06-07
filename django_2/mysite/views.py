from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect,JsonResponse
from django.db import connection
from django.shortcuts import render_to_response
from django.contrib import auth
from django.core.context_processors import csrf
from mysite.forms import MyRegistrationForm
from django.contrib.auth.models import User
def login(request):
	c={}
	c.update(csrf(request))
	return render_to_response("login.html",c)

def auth_view(request):
	if request.method=="POST":
		username=request.POST.get('username','')
		password=request.POST.get('password','')
		
		user=auth.authenticate(username=username,password=password)
		data={}
		if user is not None:
			auth.login(request,user)
			c=connection.cursor()
			c.execute("select admin_id from myadmin where username=%s",(username,))
			t=c.fetchone()
			data['admin']='false'
		
			if t is not None:
				data['admin']='true'

			data['login']='success'
			return JsonResponse(data)
		else:
			data['login']='failure'
			return JsonResponse(data)

def invalid_login(request):
	return render_to_response('accounts/invalid_login.html')


def logout(request):
	auth.logout(request)
	return HttpResponseRedirect('/myapp')

def register_user(request):
	if request.method=='POST':
		form=MyRegistrationForm(request.POST)
		if form.is_valid():
			form.save()
			return HttpResponseRedirect('/myapp')
		else :
			args={}
			args.update(csrf(request))
			args['form']=form
			return render_to_response('register.html',args)
	#u = User.objects.all()
	#print(u.profile_user.username)
	args={}
	args.update(csrf(request))
	args['form']=MyRegistrationForm()
	return render_to_response('register.html',args)