from django.shortcuts import render

# Create your views here.
 
from django.template import Context, loader
from django.http import HttpResponse,HttpResponseRedirect
from django.db import connection
from collections import namedtuple
from django.shortcuts import render_to_response 
from django.template import RequestContext
from django.contrib import auth
<<<<<<< HEAD
from myapp.forms import priceForm,orderForm,MyRegistrationForm,foodForm,restaurantForm,areaForm,branchForm,menuForm,employeeForm
=======
from myapp.forms import priceForm,orderForm,MyRegistrationForm,foodForm,restaurantForm,areaForm,branchForm,menuForm,employeeForm,update_branch,update_menu,update_employee,foodForm1
>>>>>>> dipto
from django.http import Http404
from django.core.context_processors import csrf
from math import *
def index(request,form_error=0):
	tmpl=loader.get_template("index.html")
	registration_form=MyRegistrationForm()
	if form_error==0:
		form=priceForm()
	else:
		form=priceForm(request.POST)
	if form_error==0 and request.method=='POST':
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()
	c=connection.cursor()
	
	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])

	qq="SELECT DISTINCT CATEGORY FROM FOOD order by CATEGORY"
	c.execute(qq)
	categories=c.fetchall()

	cont=RequestContext(request, {'registration_form':registration_form,
		'form':form,'categories':categories})
	
	return HttpResponse(tmpl.render(cont))
def show_food_category(request,category_name,pagination=1):
	registration_form=MyRegistrationForm()
	if request.method=='POST':
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			print('here')
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()

	c=connection.cursor()
	#print(category_name)
	c.execute("SELECT M.BRANCH_ID,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id,M.amount FROM FOOD F, MENU M \
	WHERE F.FOOD_ID=M.FOOD_ID AND F.CATEGORY=%s order by m.price",(category_name,))
	
	info=c.fetchall()
	foods=[]
	for ii in info:
		foods.append([])

	i=0
	cnt=0
	pagination=int (pagination)
	pagination_num=len(info)/9
	start=9*(pagination-1)
	end=start+9
	info=info[start:end]
	for ii in info:
		c.execute("select r.restaurant_name,b.ADDRESS from restaurant r , branch b \
			where r.restaurant_id=b.restaurant_id and b.branch_id=%s",(ii[0],))
		temp=c.fetchone()

		foods[i].append(ii[0])
		foods[i].append(ii[1])
		foods[i].append(ii[2])
		foods[i].append(ii[3])
		foods[i].append(temp[0])
		foods[i].append(temp[1])
		foods[i].append(ii[4])
		foods[i].append(ii[5])
		i+=1
	
	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])

	
	pagination_num=int(ceil(pagination_num))
	pagination_list=[]
	if pagination>2:
		pagination_list.append(pagination-2)
	if pagination>1:
		pagination_list.append(pagination-1)
	pagination_list.append(pagination)
	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)
	return render(request,"food_category.html",{'registration_form':registration_form,'pagination_num':pagination_num,'pagination':pagination,
		'pagination_list':pagination_list,'food_list':food_list,'foods':foods,
		'category_name':category_name})
def all_restaurants(request,pagination=1):
	#print("all restaurants")
	c=connection.cursor()
	c.execute("select * from restaurant order by restaurant_name")
	restaurant_list=c.fetchall()
	pagination=int (pagination)
	pagination_num=len(restaurant_list)/9
	start=9*(pagination-1)
	end=start+9
	restaurant_list=restaurant_list[start:end]

	pagination_num=int(ceil(pagination_num))
	pagination_list=[]
	
	if pagination>2:
		pagination_list.append(pagination-2)
	
	if pagination>1:
		pagination_list.append(pagination-1)
	
	pagination_list.append(pagination)

	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)
		
	return render_to_response('all_restaurants.html',RequestContext(request,{'restaurants':restaurant_list,
		'pagination_num':pagination_num,'pagination':pagination,'pagination_list':pagination_list,}))
def show_restaurants(request,area,form_error=0,pagination=1): 
	registration_form=MyRegistrationForm()
	if request.method=='POST':
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()
	area=area.lower()
	c=connection.cursor()
	c.execute("SELECT B.branch_id,B.restaurant_id FROM AREA A,BRANCH B \
		WHERE A.AREA_ID=B.AREA_ID AND lower(A.AREA_NAME)=%s",(area,))
	branches=c.fetchall()
	
	if len(branches)==0:
		return index(request)
	
	categories=[]
	for branch in branches:
		c.execute("select F.category from Menu M,Food F where M.food_id=F.food_id and M.branch_id=%s",(branch[0],))
		for ii in c.fetchall():
			categories.append(ii)
	
	categories=list(set(categories))	
	restaurant_list=[]
	contact_list=[]
	i=0
	for branch in branches:
		restaurant_list.append([])

	for branch in branches:
		c.execute("select restaurant_name from restaurant where restaurant_id=%s",(branch[1],))
		temp=c.fetchone()
		c.execute("select phone from contact_branch where branch_id=%s",(branch[0],))
		
		temp1=c.fetchall()
		a=''
		cnt=0
		for number in temp1:
			if a!='':
				a=a+','
			a=a+str(number[0])
			cnt+=1
			if cnt==4:
				a+="\n"
				cnt=0	
			
		#print(a)
		restaurant_list[i].append(branch[0])
		restaurant_list[i].append(temp[0])
		restaurant_list[i].append(a)
		i+=1
	if form_error==0:
		form=priceForm()
	else:
		form=priceForm(request.POST)
	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])
	return render_to_response("restaurants.html",RequestContext(request,{'registration_form':registration_form,
		'area_name':area,'food_list':food_list,'form':form,'restaurants':restaurant_list,'area':area,
		'user':request.user,'categories':categories}))
def area_price_category(request,area):
	if request.method=='POST':
		form=priceForm(request.POST)
		if form.is_valid():
			price1=form.cleaned_data['price1']
			price2=form.cleaned_data['price2']
			c=connection.cursor()
			c.execute("select b.branch_id,(select restaurant_name from restaurant where restaurant_id=b.restaurant_id),\
			b.address from Area a, Branch b where a.AREA_ID=b.AREA_ID and lower(a.AREA_NAME)=%s",(area.lower(),))
		
			branches=c.fetchall()

			foods=[]
			for branch in branches:
				for i in range (1,50):
					foods.append([])
			
			i=0
			for branch in branches:
				c.execute("select F.food_name,F.category,M.price,find_rating(m.menu_id),M.menu_id from Menu M, Food F\
				 where M.food_id=F.food_id and M.branch_id=%s and M.price>=%s and M.price<=%s \
				 order by m.price",(branch[0],price1,price2,))
			
				temp=c.fetchall()
				for ii in temp:
					foods[i].append(branch[0])
					foods[i].append(ii[0])
					foods[i].append(ii[2])
					foods[i].append(ii[3])
					foods[i].append(branch[1])
					foods[i].append(branch[2])
					foods[i].append(ii[4])
				i+=1
			return render(request,"food_category.html",{'foods':foods,'price1':price1,'price2':price2})
		else :
			return show_restaurants(request,area,1)
	return show_restaurants(request,area,1)
def area_food_category(request,area,category_name):
	c=connection.cursor()
	c.execute("select b.branch_id,(select restaurant_name from restaurant where restaurant_id=b.restaurant_id),\
	b.address from Area a, Branch b where a.AREA_ID=b.AREA_ID and lower(a.AREA_NAME)=lower(%s)",(area,))
	branches=c.fetchall()
	foods=[]
	for branch in branches:
		for i in range (1,50):
			foods.append([])
	
	i=0

	for branch in branches:
		c.execute("select F.food_name,F.category,M.price,find_rating(m.menu_id),M.menu_id from Menu M, Food F\
		 where M.food_id=F.food_id and M.branch_id=%s and lower(F.category)=lower(%s) \
		 order by m.price",(branch[0],category_name,))
	
		temp=c.fetchall()
		for ii in temp:
			foods[i].append(branch[0])
			foods[i].append(ii[0])
			foods[i].append(ii[2])
			foods[i].append(ii[3])
			foods[i].append(branch[1])
			foods[i].append(branch[2])
			foods[i].append(ii[4])
		i+=1
	return render(request,"food_category.html",{'foods':foods,'category_name':category_name})
def show_menu(request,branch_id,sort_rating=0,pagination=1,form_error=0):
	registration_form=MyRegistrationForm()
	form=priceForm()
	if form_error!=0:
		form=priceForm(request.POST)

	if request.method=='POST':
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			print('here')
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()
	c=connection.cursor()
	if sort_rating==1:
		c.execute("SELECT F.category,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id,M.amount FROM FOOD F, MENU M \
		WHERE F.FOOD_ID=M.FOOD_ID AND M.branch_id=%s  order by find_rating(m.menu_id)",(branch_id,))
	else:
		c.execute("SELECT F.category,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id,M.amount FROM FOOD F, MENU M \
		WHERE F.FOOD_ID=M.FOOD_ID AND M.branch_id=%s order by m.price",(branch_id,))
	#
	info=c.fetchall()
	pagination=int (pagination)
	pagination_num=len(info)/9
	start=9*(pagination-1)
	end=start+9
	info=info[start:end]
	pagination_num=int(ceil(pagination_num))
	pagination_list=[]
	if pagination>2:
		pagination_list.append(pagination-2)
	if pagination>1:
		pagination_list.append(pagination-1)
	pagination_list.append(pagination)
	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)

	foods=[]
	for ii in info:
		foods.append([])
	i=0
	for ii in info:
		c.execute("select r.restaurant_name,b.ADDRESS from restaurant r , branch b \
			where r.restaurant_id=b.restaurant_id and b.branch_id=%s",(branch_id,))
		temp=c.fetchone()

		foods[i].append(ii[1]) #food name
		foods[i].append(ii[0]) #category
		foods[i].append(ii[2]) #price
		foods[i].append(ii[4]) #menu id
		foods[i].append(ii[3]) #rating
		foods[i].append(ii[5]) #amount
		foods[i].append(temp[0]) #res name
		foods[i].append(temp[1]) #res addres
		i+=1
	
	c.execute("select r.restaurant_name,b.address from branch b,restaurant r where b.branch_id=%s and \
		b.restaurant_id=r.restaurant_id",(branch_id,))
	temp=c.fetchone()
	restaurant_name=temp[0]
	res_address=temp[1]
	c.execute("SELECT DISTINCT CATEGORY FROM FOOD F, Menu M where F.food_id=M.food_id and M.branch_id=%s\
	 order by CATEGORY",(branch_id,))
	categories=c.fetchall()
	return render(request,"menu.html",RequestContext(request,{'form':form,
		'foods':foods,'have_name':restaurant_name,'have_address':res_address,'user':request.user,
		'branch':branch_id,'categories':categories,'pagination_num':pagination_num,
					'pagination':pagination,'pagination_list':pagination_list,}))
def branch_price_category(request,branch_id):
	if request.method=='POST':
		form=priceForm(request.POST)
		if form.is_valid():
			c=connection.cursor()
			price1=form.cleaned_data['price1']
			price2=form.cleaned_data['price2']
			c.execute("SELECT F.food_name,F.category,M.PRICE,M.menu_id,find_rating(m.menu_id),M.amount \
			FROM FOOD F, MENU M WHERE F.FOOD_ID=M.FOOD_ID AND M.price>=%s and M.price<=%s \
			AND M.BRANCH_ID=%s order by m.price",(price1,price2,branch_id,))
			
			#c.execute(qq)
			foods=c.fetchall()
			c.execute("select r.restaurant_name,b.address from branch b,restaurant r where b.branch_id=%s \
				and b.restaurant_id=r.restaurant_id",(branch_id,))
			temp=c.fetchone()
			restaurant_name=temp[0]
			res_address=temp[1]
			form=priceForm()
			return render(request,"menu.html",{'form':form,'foods':foods,'user':request.user,
				'branch':branch_id,'have_name':restaurant_name,'have_address':res_address,
				'price1':price1,'price2':price2})
		
		return show_menu(request,branch_id,1,1,1)
	return show_menu(request,branch_id,1)
def branch_food_category(request,branch_id,category_name):
	c=connection.cursor()
	c.execute("select f.food_name,f.category,m.price,m.menu_id,find_rating(m.menu_id),m.amount from Food f,Menu m\
	 where f.food_id=m.food_id and m.branch_id=%s and f.category=%s order by m.price",(branch_id,category_name,))
	
	foods=c.fetchall()
	c.execute("select r.restaurant_name,b.address from branch b, restaurant r where b.restaurant_id=r.restaurant_id \
		and b.branch_id=%s",(branch_id,))
	temp=c.fetchone()
	restaurant_name=temp[0]
	res_address=temp[1]
	c.execute("SELECT DISTINCT CATEGORY FROM FOOD F, Menu M where F.food_id=M.food_id and M.branch_id=%s\
	 order by CATEGORY",(branch_id,))
	categories=c.fetchall()

	return render(request,"menu.html",{'categories':categories,'foods':foods,'user':request.user,'branch':branch_id,
		'have_name':restaurant_name,'have_address':res_address,'category_name':category_name})
def show_food_category_with_name(request,food_name,category_name,pagination=1):
	registration_form=MyRegistrationForm()
	if request.method=='POST':
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			print('here')
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()

	c=connection.cursor()
	#print(category_name)
	temp="%"+food_name.lower()+"%"
	c.execute("SELECT M.BRANCH_ID,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id,M.amount FROM FOOD F, MENU M \
	WHERE F.FOOD_ID=M.FOOD_ID AND F.CATEGORY=%s and lower(f.food_name) like %s order by m.price",(category_name,temp,))
	
	info=c.fetchall()
	foods=[]
	for ii in info:
		foods.append([])

	i=0
	cnt=0
	pagination=int (pagination)
	pagination_num=len(info)/9
	start=9*(pagination-1)
	end=start+9
	info=info[start:end]
	for ii in info:
		c.execute("select r.restaurant_name,b.ADDRESS from restaurant r , branch b \
			where r.restaurant_id=b.restaurant_id and b.branch_id=%s",(ii[0],))
		temp=c.fetchone()

		foods[i].append(ii[0])
		foods[i].append(ii[1])
		foods[i].append(ii[2])
		foods[i].append(ii[3])
		foods[i].append(temp[0])
		foods[i].append(temp[1])
		foods[i].append(ii[4])
		foods[i].append(ii[5])
		i+=1
	
	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])

	
	pagination_num=int(ceil(pagination_num))
	pagination_list=[]
	if pagination>2:
		pagination_list.append(pagination-2)
	if pagination>1:
		pagination_list.append(pagination-1)
	pagination_list.append(pagination)
	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)
	return render(request,"food_category.html",{'registration_form':registration_form,'pagination_num':pagination_num,'pagination':pagination,
		'pagination_list':pagination_list,'food_list':food_list,'foods':foods,
		'category_name':category_name,'food_name':food_name})
def search_food(request,food="",pagination=1):
	registration_form=MyRegistrationForm()
	food_name=""
	if request.method=='POST':
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()
			food_name=food
		else:
			food_name=request.POST['search_food']
	
	else:
		food_name=food
	c=connection.cursor()
	temp="%"+food_name.lower()+"%"
	c.execute("select F.food_name,F.category,M.price,M.menu_id,find_rating(m.menu_id),\
		M.amount,M.branch_id from food F , menu M where f.food_id=m.food_id \
		and lower(f.food_name) like %s order by m.price",(temp,))

	foods=c.fetchall()

	pagination=int(pagination)
	pagination_num=len(foods)/9
	start=9*(pagination-1)
	end=start+9
	foods=foods[start:end]

	foodlist=[]
	i=0
	for ii in foods:
		foodlist.append([])

	for ii in foods:
		#qq="select r.restaurant_name,b.address from restaurant r , branch b where r.restaurant_id=b.restaurant_id and b.branch_id={0}".format(ii[6])
		c.execute("select r.restaurant_name,b.address from restaurant r ,\
		 branch b where r.restaurant_id=b.restaurant_id and b.branch_id=%s",(ii[6],))
		temp=c.fetchone()
		foodlist[i].append(ii[0])
		foodlist[i].append(ii[1])
		foodlist[i].append(ii[2])
		foodlist[i].append(ii[3])
		foodlist[i].append(ii[4])
		foodlist[i].append(ii[5])
		foodlist[i].append(temp[0])
		foodlist[i].append(temp[1])
		i+=1
	foodsearch=1

	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])
	temp="%"+food_name.lower()+"%"
	c.execute("SELECT DISTINCT CATEGORY FROM FOOD F, Menu M where F.food_id=M.food_id and lower(F.food_name) like %s\
	 order by CATEGORY",(temp,))
	categories=c.fetchall()
	print(categories)
	pagination_num=int(ceil(pagination_num))
	
	pagination_list=[]
	if pagination>2:
		pagination_list.append(pagination-2)
	if pagination>1:
		pagination_list.append(pagination-1)
	pagination_list.append(pagination)
	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)
	return render(request,"menu.html",RequestContext(request,{'registration_form':registration_form,
		'pagination_num':pagination_num,'pagination':pagination,'pagination_list':pagination_list,
		'search_name':food_name,'food_list':food_list,'foods':foodlist,'user':request.user,
		'food_search':foodsearch,'categories':categories}))
def show_branches(request,restaurant_id,pagination=1):
	#qq="SELECT DISTINCT CATEGORY FROM FOOD"
	c=connection.cursor()
	#c.execute(qq)
	#categories=c.fetchall()

	#print(restaurant_id)
	categories=[]
	c.execute("select restaurant_name from restaurant where restaurant_id=%s",(restaurant_id,))
	restaurant_name=c.fetchone()

	c.execute("select (select AREA_NAME from Area where AREA_ID=b.AREA_ID),b.ADDRESS,b.branch_id\
	 from restaurant r , branch b where b.restaurant_id=r.restaurant_id and r.restaurant_id=%s",(restaurant_id,))
	branches=c.fetchall()

	restaurant_list=[]
	for branch in branches:
		c.execute("select f.category from food f,menu m where \
			f.food_id=m.food_id and m.branch_id=%s",(branch[2],))
		
		temp=c.fetchall()
		for ii in temp:
			categories.append(ii)
	categories=list(set(categories))
	for branch in branches:
		restaurant_list.append([])
	i=0

	for branch in branches:
		c.execute("select phone from contact_branch where branch_id=%s",(branch[2],))
		temp1=c.fetchall()
		a=''
		for number in temp1:
			if a!='':
				a=a+','
			a=a+str(number[0])

		restaurant_list[i].append(branch[0])
		restaurant_list[i].append(branch[1])
		restaurant_list[i].append(branch[2])
		restaurant_list[i].append(a)
		i+=1
	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])
	return render_to_response("branch.html",RequestContext(request,{'food_list':food_list,'user':request.user,
		'restaurant_list':restaurant_list,'restaurant_name':restaurant_name[0],'categories':categories}))
def price_category(request,price1=0,price2=0,pagination=1):
	registration_form=MyRegistrationForm()
	if request.method=='POST':
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()
		else:
			form=priceForm(request.POST)
			if form.is_valid():
				price1=form.cleaned_data['price1']
				price2=form.cleaned_data['price2']
				c=connection.cursor()
				c.execute("SELECT M.BRANCH_ID,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id,M.amount\
				FROM FOOD F, MENU M WHERE F.FOOD_ID=M.FOOD_ID AND M.price>=%s and M.price<=%s\
				 order by m.price",(price1,price2,))
				info=c.fetchall()


				i=0

				pagination=int (pagination)
				pagination_num=len(info)/9
				start=9*(pagination-1)
				end=start+9
				info=info[start:end]
				pagination_num=int(ceil(pagination_num))
				pagination_list=[]
				if pagination>2:
					pagination_list.append(pagination-2)
				if pagination>1:
					pagination_list.append(pagination-1)
				pagination_list.append(pagination)
				if pagination+1<=pagination_num:
					pagination_list.append(pagination+1)
				if pagination+2<=pagination_num:
					pagination_list.append(pagination+2)

				foods=[]
				for ii in info:
					foods.append([])
				for ii in info:
					c.execute("select r.restaurant_name,b.ADDRESS from restaurant r , branch b\
					 where r.restaurant_id=b.restaurant_id and b.branch_id=%s",(ii[0],))
					temp=c.fetchone()

					foods[i].append(ii[0])
					foods[i].append(ii[1])
					foods[i].append(ii[2])
					foods[i].append(ii[3])
					foods[i].append(temp[0])
					foods[i].append(temp[1])
					foods[i].append(ii[4])
					foods[i].append(ii[5])
					i+=1
				category_name=''	
				return render(request,"food_category.html",{'registration_form':registration_form,
					'foods':foods,'price1':price1,'price2':price2,'pagination_num':pagination_num,
					'pagination':pagination,'pagination_list':pagination_list})
			args={}
			args.update(csrf(request))
			args['form']=form
			return index(request,1)
	
	if price1!=0 and price2!=0:
		registration_form=MyRegistrationForm()
		c=connection.cursor()
		c.execute("SELECT M.BRANCH_ID,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id,M.amount\
		FROM FOOD F, MENU M WHERE F.FOOD_ID=M.FOOD_ID AND M.price>=%s and M.price<=%s\
		 order by m.price",(price1,price2,))
		info=c.fetchall()

		i=0
		pagination=int (pagination)
		pagination_num=len(info)/9
		start=9*(pagination-1)
		end=start+9
		info=info[start:end]
		pagination_num=int(ceil(pagination_num))
		pagination_list=[]
		if pagination>2:
			pagination_list.append(pagination-2)
		if pagination>1:
			pagination_list.append(pagination-1)
		pagination_list.append(pagination)
		if pagination+1<=pagination_num:
			pagination_list.append(pagination+1)
		if pagination+2<=pagination_num:
			pagination_list.append(pagination+2)

		foods=[]
		for ii in info:
			foods.append([])
		for ii in info:
			c.execute("select r.restaurant_name,b.ADDRESS from restaurant r , branch b\
			 where r.restaurant_id=b.restaurant_id and b.branch_id=%s",(ii[0],))
			temp=c.fetchone()

			foods[i].append(ii[0]) #branch
			foods[i].append(ii[1]) #name
			foods[i].append(ii[2]) 
			foods[i].append(ii[3])
			foods[i].append(temp[0])
			foods[i].append(temp[1])
			foods[i].append(ii[4])
			foods[i].append(ii[5])
			i+=1
		category_name=''	
		return render(request,"food_category.html",{'registration_form':registration_form,
			'foods':foods,'price1':price1,'price2':price2,'pagination_num':pagination_num,
			'pagination':pagination,'pagination_list':pagination_list})
	return index(request,1)
def order_submit(request,order_id,area_id='NULL',address='NULL'):
	orderinfo_list=request.POST.getlist('checks[]')
	#print("check list")
	print(orderinfo_list)
	temp2=[]
	order_list=[]
	c=connection.cursor()
	print(address)
	for ii in orderinfo_list:
		c.execute("update order_info set is_checked=1 where orderinfo_id={0}".format(ii))
		
	c.execute("update foodorder set is_submitted=1,area_id=%s,address=%s,\
		order_date=sysdate,status=0 where order_id=%s",(area_id,address,order_id,))

	for ii in orderinfo_list:
		c.execute("select menu_id,amount from order_info where orderinfo_id=%s",(ii,))
		#c.execute(qq)
		temp3=c.fetchone()
		temp2.append(temp3)

	for ii in temp2:
		order_list.append([])
	i=0
	total=0
	bb=set()
	for ii in temp2:
		c.execute("select food_id, branch_id,price from menu where menu_id=%s",(ii[0],))
		
		temp3=c.fetchone()
		#print(temp3[2])
		order_list[i].append(ii[1]) #amount
		order_list[i].append(temp3[2]) #price
		total+=(temp3[2]*ii[1])
		#i+=1
		#c.execute("update menu set amount=amount-%s where menu_id=%s",(ii[1],ii[0],))
		#c.execute("commit;")
		c.execute("select food_name, category from food where food_id=%s",(temp3[0],))
		#c.execute(qq)
		temp4=c.fetchone()
		order_list[i].append(temp4[0])#food name
		order_list[i].append(temp4[1])#category
		#i+=1
		print(temp4[0])
		c.execute("select b.address, b.dcharge,r.restaurant_name from branch b, restaurant r\
		 where b.restaurant_id=r.restaurant_id and b.branch_id=%s",(temp3[1],))
		
		temp5=c.fetchone()
		order_list[i].append(temp5[0]) #restaurant address
		order_list[i].append(temp5[1])# charge
		order_list[i].append(temp5[2])#restaurant name
		if temp3[1] not in bb:
			total+=temp5[1]
			bb.add(temp3[1])

		i+=1

	c.callproc("update_bill",(request.user.username,total))
	return render(request,"order_success.html",RequestContext(request,{'foods':order_list,'total':total}))
def take_order(request):
	c=connection.cursor()
	temp=[]
	name=request.user.username
	print(name)
	order_list=[]
	c.execute("select customer_id from customer where username=%s",(name,))
	
	temp1=c.fetchone()
	print(temp1)
	c.execute("select order_id from foodorder where customer_id=%s and is_submitted=0",(temp1[0],))
	
	temp2=c.fetchone()
	print("order id ")
	print(temp2)

	if not temp2:
		no_food="no food"
		return render(request,"order.html",RequestContext(request,{'no_food':no_food}))
	orderid=temp2[0]
	#employee=temp[0]
	c.execute("select menu_id,amount,orderinfo_id from order_info where order_id=%s",(temp2[0],))
	#c.execute(qq)
	temp2=c.fetchall()
	print(temp2)
	for ii in temp2:
		c.execute("select food_id, branch_id,price from menu where menu_id=%s",(ii[0],))
		#c.execute(qq)
		temp3=c.fetchone()
		if len(temp3)!=0:
			order_list.append([])
	print(order_list)
	if  len(order_list)==0:
		no_food="no food"
		return render(request,"order.html",RequestContext(request,{'no_food':no_food}))
	i=0
	for ii in temp2:
		c.execute("select food_id, branch_id,price from menu where menu_id=%s",(ii[0],))
		#c.execute(qq)
		temp3=c.fetchone()
		if len(temp3)==0:
			continue
		order_list[i].append(ii[1]) #amount
		order_list[i].append(temp3[2]) #price
		
		c.execute("select food_name, category from food where food_id=%s",(temp3[0],))
		
		temp4=c.fetchone()
		order_list[i].append(temp4[0])#food name
		order_list[i].append(temp4[1])#category
		
		c.execute("select b.address, b.dcharge,r.restaurant_name from branch b, restaurant r\
		 where b.restaurant_id=r.restaurant_id and b.branch_id=%s",(temp3[1],))
		
		temp5=c.fetchone()
		order_list[i].append(temp5[0]) #restaurant address
		order_list[i].append(temp5[1])# charge
		order_list[i].append(temp5[2])#restaurant name
		order_list[i].append(ii[2])#orderinfo_id
		order_list[i].append(temp3[1])#orderinfo_id
		i+=1
	
	print(order_list)
	if request.method=='POST':
		form=orderForm(request.POST)
		if form.is_valid():
			area_id=form.cleaned_data['area']
			address=form.cleaned_data['address']
			print(area_id)
			return order_submit(request,orderid,area_id,address)
			#return render(request,"order_success.html",RequestContext(request,{'order_list':order_list}))
		else:
			return render(request,"order.html",RequestContext(request,{'form':form,'order_list':order_list}))

	form=orderForm();
	return render(request,"order.html",RequestContext(request,{'orderid':orderid,'form':form,'order_list':order_list}))
def show_orders(request,pagination=1):
	c=connection.cursor()
	temp=[]
	name=request.user.username
	print(name)
	order_list=[]
	c.execute("select customer_id from customer where username=%s",(name,))
	
	userid=c.fetchone()
	print(userid)
	c.execute("select order_id,to_char(order_date,'mon dd,yyyy: hh24:mi') ,emp_id,status from foodorder where customer_id=%s and is_submitted=1 order by order_date desc",(userid[0],))
	
	orderlist=c.fetchall()

	pagination=int (pagination)
	pagination_num=len(orderlist)/4
	start=4*(pagination-1)
	end=start+4
	orderlist=orderlist[start:end]
	pagination_num=int(ceil(pagination_num))
	pagination_list=[]
	if pagination>2:
		pagination_list.append(pagination-2)
	if pagination>1:
		pagination_list.append(pagination-1)
	pagination_list.append(pagination)
	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)

	print("order list ")
	print(orderlist)

	if not orderlist:
		no_order="no order"
		return render(request,"order.html",RequestContext(request,{'no_order':no_order}))
	
	order_list=[]  #final order list to be rendered
	i=0
	for ii in orderlist:
		order_list.append([])
		order_list[i].append(ii[1])  #order_date
		i+=1

	index=0
	for order in orderlist:
		print(order)
		orderid=order[0]
		c.execute("select menu_id,amount,orderinfo_id from order_info where order_id=%s",(orderid,))
		menu_list=c.fetchall()
		print(menu_list)
		for menu in menu_list:
			c.execute("select food_id, branch_id,price from menu where menu_id=%s",(menu[0],))
			temp3=c.fetchone()
			if len(temp3)!=0:
				order_list[index].append([])
		#print(order_list[index])
		if  len(order_list[index])==0:
			index+=1
			print("continue")
			continue
		i=1
		for ii in menu_list:
			c.execute("select food_id, branch_id,price from menu where menu_id=%s",(ii[0],))
			temp3=c.fetchone()
			if len(temp3)==0:
				continue
			order_list[index][i].append(ii[1]) #amount
			order_list[index][i].append(temp3[2]) #price
			
			c.execute("select food_name, category from food where food_id=%s",(temp3[0],))
			
			temp4=c.fetchone()
			order_list[index][i].append(temp4[0])#food name
			order_list[index][i].append(temp4[1])#category
			
			c.execute("select b.address, b.dcharge,r.restaurant_name from branch b, restaurant r\
			 where b.restaurant_id=r.restaurant_id and b.branch_id=%s",(temp3[1],))
			
			temp5=c.fetchone()
			order_list[index][i].append(temp5[0]) #restaurant address
			order_list[index][i].append(temp5[1])# charge
			order_list[index][i].append(temp5[2])#restaurant name
			order_list[index][i].append(ii[2])#orderinfo_id
			order_list[index][i].append(temp3[1])#orderinfo_id
			i+=1
		index+=1
		
	print(order_list)
	
	return render(request,"show_orders.html",RequestContext(request,{'order_list':order_list,
		'pagination_num':pagination_num,'pagination':pagination,'pagination_list':pagination_list,}))

<<<<<<< HEAD

=======
>>>>>>> dipto
def admin_site(request):
	food_name=""
	category_name=""
	form=foodForm()
	print("food_name")
	if request.method=='POST':
		form=foodForm(request.POST)
		#food_name=form.cleaned_data['food']
		if form.is_valid():
			success="success"
			food_name=form.cleaned_data['food']
			category_name=form.cleaned_data['category']
			
			c=connection.cursor()
			c.execute("select max(food_id) from Food")
			id=c.fetchone()
			print(id[0])
			print(food_name)
			print(category_name)
			c.execute("insert into food values(%d,'%s','%s')"%(id[0]+1,food_name,category_name))
			form=foodForm();
			return render(request,"admin_base.html",RequestContext(request,{'success':success,'form':form}))
		else:
			error="error"
			return render(request,"admin_base.html",RequestContext(request,{'form':form,'error':error}))
 
	return render(request,"admin_base.html",RequestContext(request,{'form':form}))
def insert_restaurant(request):
	restaurant_name=""
	form=restaurantForm()
	if request.method=='POST':
		form=restaurantForm(request.POST)
		#food_name=form.cleaned_data['food']
		if form.is_valid():
			success="success"
			restaurant_name=form.cleaned_data['restaurant']
			
			c=connection.cursor()
			c.execute("select max(restaurant_id) from restaurant")
			id=c.fetchone()
			c.execute("insert into restaurant values(%d,'%s')"%(id[0]+1,restaurant_name))
			form=restaurantForm();
			return render(request,"insert_restaurant.html",RequestContext(request,{'success':success,'form':form}))
		else:
			error="error"
			return render(request,"insert_restaurant.html",RequestContext(request,{'form':form,'error':error}))
 
	return render(request,"insert_restaurant.html",RequestContext(request,{'form':form}))
def insert_area(request):
	area_name=""
	form=areaForm()
	if request.method=='POST':
		form=areaForm(request.POST)
		#food_name=form.cleaned_data['food']
		if form.is_valid():
			success="success"
			area_name=form.cleaned_data['area']
			
			c=connection.cursor()
			c.execute("select max(area_id) from area")
			id=c.fetchone()
			c.execute("insert into area values('%s',%d)"%(area_name,id[0]+1))
			form=areaForm();
			return render(request,"insert_area.html",RequestContext(request,{'success':success,'form':form}))
		else:
			error="error"
			return render(request,"insert_area.html",RequestContext(request,{'form':form,'error':error}))
 
	return render(request,"insert_area.html",RequestContext(request,{'form':form}))
def insert_branch(request):
	area_name=""
	restaurant_name=""
	address=""

	dcharge=0
	form=branchForm()
	if request.method=='POST':
		form=branchForm(request.POST)
		#food_name=form.cleaned_data['food']
		if form.is_valid():
			success="success"
			area_id=form.cleaned_data['area'] 
			restaurant_id=form.cleaned_data['restaurant']
			address=form.cleaned_data['address']
			dcharge=form.cleaned_data['dcharge']
			
			print(area_id)
			print(restaurant_id)
			print(address)
			print(dcharge)
			
			c=connection.cursor()
			c.execute("select max(branch_id) from branch")
			id=c.fetchone()
			
			c.execute("insert into branch values(%d,%s,%s,'%s',%s)"%(id[0]+1,area_id,restaurant_id,address,dcharge))
			form=branchForm();
			return render(request,"insert_branch.html",RequestContext(request,{'success':success,'form':form}))
		else:
			error="error"
			return render(request,"insert_branch.html",RequestContext(request,{'form':form,'error':error}))
 
	return render(request,"insert_branch.html",RequestContext(request,{'form':form}))
def insert_menu(request):
	food=""
	branch_id=0
	price=0
	amount=0
	
	form=menuForm()
	if request.method=='POST':
		form=menuForm(request.POST)
		#food_name=form.cleaned_data['food']
		if form.is_valid():
			success="success"
			food_id=form.cleaned_data['food'] 
			branch_id=form.cleaned_data['branch_id']
			price=form.cleaned_data['price']
			amount=form.cleaned_data['amount']
			c=connection.cursor()
			c.execute("select max(menu_id) from menu")
			id=c.fetchone()
			
			c.execute("insert into menu values(%d,%s,%s,%s,%s)"%(id[0]+1,food_id,branch_id,price,amount))
			form=menuForm();
			return render(request,"insert_menu.html",RequestContext(request,{'success':success,'form':form}))
		else:
			error="error"
			return render(request,"insert_menu.html",RequestContext(request,{'form':form,'error':error}))
 
	return render(request,"insert_menu.html",RequestContext(request,{'form':form}))
def insert_employee(request):
	hire_date=""
	salary=0
	emp_name=""
	phone=""
	
	form=employeeForm()
	if request.method=='POST':
		form=employeeForm(request.POST)
		#food_name=form.cleaned_data['food']
		if form.is_valid():
			success="success"
			area_id=form.cleaned_data['area'] 
			emp_name=form.cleaned_data['name']
			phone=form.cleaned_data['phone']
			hire_date=form.cleaned_data['hire_date']
			salary=form.cleaned_data['salary']
			
			
			c=connection.cursor()
			c.execute("select max(emp_id) from employee")
			id=c.fetchone()
			
			c.execute("insert into Employee values(%d,%s,'%s','%s','%s',%s)"%(id[0]+1,area_id,emp_name,phone,hire_date,salary))
			form=employeeForm();
			return render(request,"insert_employee.html",RequestContext(request,{'success':success,'form':form}))
		else:
			error="error"
			return render(request,"insert_employee.html",RequestContext(request,{'form':form,'error':error}))
 
	return render(request,"insert_employee.html",RequestContext(request,{'form':form}))
def show_tables(request):

	tables=[]
	tables.append("Area")
	tables.append("Restaurant")
	tables.append("Food")
	tables.append("Branch")
	tables.append("Menu")
	tables.append("Employee")
	

	return render(request,"all_tables.html",RequestContext(request,{'tables':tables}))
def delete_item(request,table_name,pagination=1):
	c=connection.cursor()
	if request.method=='POST':
		delete_list=request.POST.getlist('checks[]')
		print(delete_list)
		for item in delete_list:
			if table_name.upper()=="AREA":
				c.execute("delete from AREA where area_id=%s",(item,))
			elif table_name.upper()=="RESTAURANT":
				c.execute("delete from restaurant where restaurant_id=%s",(item,))
			elif table_name.upper()=="FOOD":
				c.execute("delete from food where food_id=%s",(item,))
			elif table_name.upper()=="BRANCH":
				c.execute("delete from Branch where branch_id=%s",(item,))
			elif table_name.upper()=="MENU":
				c.execute("delete from menu where menu_id=%s",(item,))
			elif table_name.upper()=="EMPLOYEE":
				c.execute("delete from employee where emp_id=%s",(item,))	
	columns=[]
	if table_name.upper()=="AREA":
		columns.append("Area id")
		columns.append("Area name")
<<<<<<< HEAD

	else:
		c.execute("select COLUMN_NAME from ALL_TAB_COLUMNS where TABLE_NAME=%s",(table_name.upper(),))
		columns=c.fetchall()
=======
	elif table_name.upper()=="BRANCH":
		columns.append("Branch id")
		columns.append("Area name")
		columns.append("Restaurant Name")
		columns.append("Address")
		columns.append("Delivery Charge")
	elif table_name.upper()=="MENU":
		columns.append("Menu id")
		columns.append("Food name")
		columns.append("Restaurant Name,Area")
		columns.append("Price")
		columns.append("Amount")
	elif table_name.upper()=="EMPLOYEE":
		columns.append("Employee id")
		columns.append("Area name")
		columns.append("Employee Name")
		columns.append("Phone")
		columns.append("Hire Date")
		columns.append("Salary")
	else:
		c.execute("select COLUMN_NAME from ALL_TAB_COLUMNS where TABLE_NAME=%s",(table_name.upper(),))
		columns=c.fetchall()
	
>>>>>>> dipto
	print(columns)
	n=len(columns)
	column_num=[]
	for pp in range(0,n):
		column_num.append(pp)

	column_list=[]
<<<<<<< HEAD
	if table_name.upper() != "AREA":
		for col in columns:

			column_list.append(col[0])
		column_list.reverse()
	else:
		column_list=columns
=======
	if table_name.upper() == "AREA" or  table_name.upper() == "BRANCH" or table_name.upper() == "MENU" or table_name.upper() == "EMPLOYEE" :
		column_list=columns

	else:
		for col in columns:
			column_list.append(col[0])
		column_list.reverse()
>>>>>>> dipto
	
	items=[]
	print(table_name.upper())
	if table_name.upper()=="AREA":
		c.execute("select area_id,area_name from AREA order by area_name")
	elif table_name.upper()=="RESTAURANT":
		c.execute("select * from RESTAURANT order by restaurant_name")
	elif table_name.upper()=="FOOD":
		c.execute("select * from FOOD order by food_name")
	elif table_name.upper()=="BRANCH":
<<<<<<< HEAD
		c.execute("select * from BRANCH")
	elif table_name.upper()=="MENU":
		c.execute("select * from MENU")
=======
		c.execute("select branch_id,(select area_name from area where area_id=b.area_id), \
			(select restaurant_name from restaurant where restaurant_id=b.restaurant_id),address,dcharge\
			from BRANCH b order by branch_id")
	elif table_name.upper()=="MENU":
		c.execute("select menu_id,(select food_name from food where food_id=m.food_id),\
		 (select (select restaurant_name from restaurant where restaurant_id=b.restaurant_id)||','||\
		(select area_name from area where area_id=b.area_id) from branch b where b.branch_id=m.branch_id),price,amount\
		from MENU m")
>>>>>>> dipto
	elif table_name.upper()=="EMPLOYEE":
		c.execute("select * from EMPLOYEE")	
	


	t=c.fetchall()

	pagination=int (pagination)
	pagination_num=len(t)/9
	start=9*(pagination-1)
	end=start+9
	t=t[start:end]
	pagination_num=int(ceil(pagination_num))
	pagination_list=[]
	if pagination>2:
		pagination_list.append(pagination-2)
	if pagination>1:
		pagination_list.append(pagination-1)
	pagination_list.append(pagination)
	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)


	for ii in t:
			items.append([])
	i=0
	for jj in t:
		for kk in range (0,n):
			items[i].append(jj[kk])
		i+=1



	return render(request,"delete_item.html",RequestContext(request,{'table_name':table_name,
		'column_list':column_list,'items':items,'pagination_num':pagination_num,
					'pagination':pagination,'pagination_list':pagination_list,}))
def all_orders(request,pagination=1):

	order_list=[]
	c=connection.cursor()
	c.execute("select order_id,customer_id,to_char(order_date,'mon dd,yyyy: hh24:mi'),emp_id,status from foodorder where is_submitted=1 order by order_date desc")
	
	orderlist=c.fetchall()

	pagination=int (pagination)
	pagination_num=len(orderlist)/9
	start=9*(pagination-1)
	end=start+9
	orderlist=orderlist[start:end]
	pagination_num=int(ceil(pagination_num))
	pagination_list=[]
	if pagination>2:
		pagination_list.append(pagination-2)
	if pagination>1:
		pagination_list.append(pagination-1)
	pagination_list.append(pagination)
	if pagination+1<=pagination_num:
		pagination_list.append(pagination+1)
	if pagination+2<=pagination_num:
		pagination_list.append(pagination+2)

	order_list=[]  #final order list to be rendered
	i=0
	for ii in orderlist:
		order_list.append([])
		order_list[i].append(ii[2])  #order_date
		c.execute("select name,address from customer where customer_id=%s",(ii[1],))
		customer=c.fetchone()
		print(customer)
		order_list[i].append(customer[0]) #customer name
		order_list[i].append(customer[1]) #customer address
		i+=1

	index=0
	for order in orderlist:
		print(order)
		orderid=order[0]
		c.execute("select menu_id,amount,orderinfo_id from order_info where order_id=%s",(orderid,))
		menu_list=c.fetchall()
		print(menu_list)
		for menu in menu_list:
			c.execute("select food_id, branch_id,price from menu where menu_id=%s",(menu[0],))
			temp3=c.fetchone()
			if len(temp3)!=0:
				order_list[index].append([])
		#print(order_list[index])
		if  len(order_list[index])==0:
			index+=1
			print("continue")
			continue
		i=3
		for ii in menu_list:
			c.execute("select food_id, branch_id,price from menu where menu_id=%s",(ii[0],))
			temp3=c.fetchone()
			if len(temp3)==0:
				continue
			order_list[index][i].append(ii[1]) #amount
			order_list[index][i].append(temp3[2]) #price
			
			c.execute("select food_name, category from food where food_id=%s",(temp3[0],))
			
			temp4=c.fetchone()
			order_list[index][i].append(temp4[0])#food name
			order_list[index][i].append(temp4[1])#category
			
			c.execute("select b.address, b.dcharge,r.restaurant_name from branch b, restaurant r\
			 where b.restaurant_id=r.restaurant_id and b.branch_id=%s",(temp3[1],))
			
			temp5=c.fetchone()
			order_list[index][i].append(temp5[0]) #restaurant address
			order_list[index][i].append(temp5[1])# charge
			order_list[index][i].append(temp5[2])#restaurant name
			order_list[index][i].append(ii[2])#orderinfo_id
			order_list[index][i].append(temp3[1])#orderinfo_id
			i+=1
		index+=1
		
	print(order_list)
	return render(request,"admin_show_orders.html",RequestContext(request,{'pagination_num':pagination_num,
					'pagination':pagination,'pagination_list':pagination_list,'order_list':order_list,}))

<<<<<<< HEAD
=======
def update_item(request,table_name):
	c=connection.cursor()	
	updated=""
	error=""
	if request.method=='POST':
		table_name=table_name.upper()
		if table_name=="MENU":
			form=update_menu(request.POST)
			if form.is_valid():
				updated="updated"
				menu_id=form.cleaned_data['menu_id']
				food_id=form.cleaned_data['food'] 
				branch_id=form.cleaned_data['branch_id']
				price=form.cleaned_data['price']
				amount=form.cleaned_data['amount']
				if price==None:
					c.execute("select price from menu where menu_id=%s",(menu_id,))
					price=c.fetchone()[0]
				if amount==None:
					c.execute("select amount from menu where menu_id=%s",(menu_id,))
					amount=c.fetchone()[0]
				c.execute("update menu set food_id=%s,branch_id=%s,price=%s,amount=%s where menu_id=%s",(food_id,branch_id,price,amount,menu_id,))
		elif table_name=="AREA":
			form=areaForm(request.POST)
			if form.is_valid():
				updated="updated"
				area_id=form.cleaned_data['area_id']
				area_name=form.cleaned_data['area']
				
				c.execute("select area_name from area")
				t=c.fetchall()
				found=0
				for i in t:
					if area_name.lower()==i[0].lower():
						found=1
						break
				if found==0:
					c.execute("update area set area_name=%s where area_id=%s",(area_name,area_id,))
				else:
					error="error"
		elif table_name=="RESTAURANT":
			form=restaurantForm(request.POST)
			if form.is_valid():
				updated="updated"
				area_id=form.cleaned_data['restaurant_id']
				area_name=form.cleaned_data['restaurant']
				
				c.execute("select restaurant_name from restaurant")
				t=c.fetchall()
				found=0
				for i in t:

					if area_name.lower()==i[0].lower():
						found=1
						break
				if found==0:
					c.execute("update Restaurant set restaurant_name=%s where restaurant_id=%s",(area_name,area_id,))
				else:
					error="error"
		elif table_name=="EMPLOYEE":
			form=update_employee(request.POST)
			if form.is_valid():
				updated="updated"

				emp_id=form.cleaned_data['emp_id']
				area_id=form.cleaned_data['area_id']
				name=form.cleaned_data['name']
				phone=form.cleaned_data['phone']
				hire_date=form.cleaned_data['hire_date']
				salary=form.cleaned_data['salary']

				if len(name)==0:
					c.execute("select emp_name from employee where emp_id=%s",(emp_id,))
					name=c.fetchone()[0]
				if len(phone)==0:
					c.execute("select phone from employee where emp_id=%s",(emp_id,))
					phone=c.fetchone()[0]
				if hire_date==None:
					c.execute("select hire_date from employee where emp_id=%s",(emp_id,))
					hire_date=c.fetchone()[0]
				if salary==None:
					c.execute("select salary from employee where emp_id=%s",(emp_id,))
					salary=c.fetchone()[0]
				c.execute("update employee set area_id=%s,emp_name=%s,phone=%s,hire_date=%s,salary=%s where emp_id=%s",(area_id,name,phone,hire_date,salary,emp_id))
		elif table_name=="FOOD":
			form=foodForm1(request.POST)
			if form.is_valid():
				updated="updated"
				area_id=form.cleaned_data['food_id']
				area_name=form.cleaned_data['food']
				category=form.cleaned_data['category']
		
				found=0

				if len(area_name)==0:
					c.execute("select food_name from food where food_id=%s",(area_id,))
					area_name=c.fetchone()[0]
				else:
					c.execute("select food_name,food_id from food")
					t=c.fetchall()
					for i in t:
						if area_name.lower()==i[0].lower():
							found=1
							break	
				if len(category)==0:
					c.execute("select category from food where food_id=%s",(area_id,))
					category=c.fetchone()[0]
				if found==0:
					c.execute("update food set food_name=%s,category=%s where food_id=%s",(area_name,category,area_id,))
				else:
					error="error"
		elif table_name=="BRANCH":
			form=update_branch(request.POST)
			if form.is_valid():
				updated="updated"

				branch_id=form.cleaned_data['branch_id']
				area_id=form.cleaned_data['area_id']
				restaurant_id=form.cleaned_data['restaurant_id']
				address=form.cleaned_data['address']
				dcharge=form.cleaned_data['dcharge']

				if len(address)==0:
					c.execute("select address from branch where branch_id=%s",(branch_id,))
					address=c.fetchone()[0]
				if dcharge==None:
					c.execute("select dcharge from branch where branch_id=%s",(branch_id,))
					dcharge=c.fetchone()[0]
				c.execute("update branch set area_id=%s,restaurant_id=%s,address=%s,dcharge=%s where branch_id=%s",(area_id,restaurant_id,address,dcharge,branch_id))

	columns=[]
	if table_name.upper()=="AREA":
		columns.append("Area id")
		columns.append("Area name")
	elif table_name.upper()=="BRANCH":
		columns.append("Branch id")
		columns.append("Area name")
		columns.append("Restaurant Name")
		columns.append("Address")
		columns.append("Delivery Charge")
	elif table_name.upper()=="MENU":
		columns.append("Menu id")
		columns.append("Food name")
		columns.append("Restaurant Name,Area")
		columns.append("Price")
		columns.append("Amount")
	elif table_name.upper()=="EMPLOYEE":
		columns.append("Employee id")
		columns.append("Area name")
		columns.append("Employee Name")
		columns.append("Phone")
		columns.append("Hire Date")
		columns.append("Salary")
	else:
		c.execute("select COLUMN_NAME from ALL_TAB_COLUMNS where TABLE_NAME=%s",(table_name.upper(),))
		columns=c.fetchall()

	#print(columns)
	n=len(columns)
	column_num=[]
	for pp in range(0,n):
		column_num.append(pp)

	column_list=[]
	if table_name.upper() == "AREA" or  table_name.upper() == "BRANCH" or table_name.upper() == "MENU" or table_name.upper() == "EMPLOYEE" :
		column_list=columns
	else:
		for col in columns:
			column_list.append(col[0])
		column_list.reverse()
	items=[]
	#print(table_name.upper())
	if table_name.upper()=="AREA":
		c.execute("select area_id,area_name from AREA order by area_id")
	elif table_name.upper()=="RESTAURANT":
		c.execute("select * from RESTAURANT order by restaurant_id")
	elif table_name.upper()=="FOOD":
		c.execute("select * from FOOD order by food_id")
	elif table_name.upper()=="BRANCH":
		c.execute("select branch_id,(select area_name from area where area_id=b.area_id), \
			(select restaurant_name from restaurant where restaurant_id=b.restaurant_id),address,dcharge\
			from BRANCH b order by branch_id")
	elif table_name.upper()=="MENU":
		c.execute("select menu_id,(select food_name from food where food_id=m.food_id),\
		 (select (select restaurant_name from restaurant where restaurant_id=b.restaurant_id)||','||\
		(select area_name from area where area_id=b.area_id) from branch b where b.branch_id=m.branch_id),price,amount\
		from MENU m order by menu_id")
	elif table_name.upper()=="EMPLOYEE":
		c.execute("select emp_id,(select area_name from area where area_id=e.area_id),emp_name,phone,hire_date,\
		salary from EMPLOYEE e order by emp_id")	

	t=c.fetchall()
	for ii in t:
			items.append([])
	i=0
	print(t)
	for jj in t:
		for kk in range (0,n):
			items[i].append(jj[kk])
		i+=1

	table_name=table_name.upper()
	if table_name=="FOOD":
		form=foodForm1()
	
	elif table_name=="AREA":
		form=areaForm()
	elif table_name=="RESTAURANT":
		form=restaurantForm()
	elif table_name=="BRANCH":
		form=update_branch()
	elif table_name=="MENU":
		form=update_menu()
	elif table_name=="EMPLOYEE":
		form=update_employee()
	#print(form)
	return render(request,"update_item.html",RequestContext(request,{'error':error,'success':updated,'table_name':table_name,'column_list':column_list,'items':items,'form':form}))




>>>>>>> dipto
