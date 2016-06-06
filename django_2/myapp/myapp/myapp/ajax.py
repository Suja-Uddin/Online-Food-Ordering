from django.shortcuts import render

# Create your views here.

from django.template import Context, loader
from django.http import HttpResponse,JsonResponse
from django.db import connection
from collections import namedtuple
from django.shortcuts import render_to_response 
from django.template import RequestContext

def submit_rating(request):
	if request.method=="POST": 
		value=request.POST.get('value')
		menu_id=request.POST.get('menu_id')
		user=request.user.username	
		cursor=connection.cursor()
		cursor.callproc("submit_rating",(user,value,menu_id))
		
		cursor.execute("select find_rating(%s) from Menu M",(menu_id,))
		temp=cursor.fetchone()
		print(temp[0])
		data={}
		data['rating']=temp[0]

		return JsonResponse(data)
def area_varify(request):
	area=request.POST.get('area')
	area=area.lower()
	c=connection.cursor()
	qq="select area_id from area where lower(area_name)='{0}'".format(area)
	c.execute(qq)
	temp=c.fetchone()
	data={}
	print(temp)
	if temp==None:
		data['find_area']='failure'
	else :
		data['find_area']='success'
	return JsonResponse(data)

def varify_login(request):
	#print(request.user.username)
	data={}
	if request.user.is_active:	

		data['login']='success'
		
	else:
		data['login']='failure'
	return JsonResponse(data)

def add_to_order(request):
	user=request.user.username
	cursor=connection.cursor()
	amount=request.POST.get('amount')
	menu=request.POST.get('menu_id')
	print(amount)
	print(menu)
	data={}
	
	cursor.callproc("add_order",(user,menu,amount))
	
	return JsonResponse(data)