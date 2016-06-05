from django.shortcuts import render

# Create your views here.
 
from django.template import Context, loader
from django.http import HttpResponse,HttpResponseRedirect
from django.db import connection
from collections import namedtuple
from django.shortcuts import render_to_response 
from django.template import RequestContext
from django.contrib import auth
from myapp.forms import priceForm,orderForm,MyRegistrationForm,foodForm,restaurantForm,areaForm,branchForm,menuForm,employeeForm
from django.http import Http404
from django.core.context_processors import csrf

def index(request,form_error=0):

	tmpl=loader.get_template("index.html")
	registration_form=MyRegistrationForm()
	if form_error==0:
		form=priceForm()
	else:
		form=priceForm(request.POST)
	if form_error==0 and request.method=='POST':
		if 'priceSearchButton' in request.POST:
			return price_category(request)
		if "registerButton" in request.POST:
			registration_form=MyRegistrationForm(request.POST)
			if registration_form.is_valid():
				registration_form.save()
				registration_form=MyRegistrationForm()
	c=connection.cursor()
	qq="select AREA_NAME from AREA"
	c.execute(qq)

	area_list=[]
	for ii in c.fetchall():
		#print(ii[0])
		area_list.append(ii[0])

	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])

	qq="SELECT DISTINCT CATEGORY FROM FOOD order by CATEGORY"
	c.execute(qq)
	categories=c.fetchall()

	cont=RequestContext(request, {'registration_form':registration_form,'food_list':food_list,'form':form,'area_list':area_list,'categories':categories})
	
	return HttpResponse(tmpl.render(cont))
def show_food_category(request,category_name):
	c=connection.cursor()
	#print(category_name)
	c.execute("SELECT M.BRANCH_ID,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id,M.amount FROM FOOD F, MENU M \
	WHERE F.FOOD_ID=M.FOOD_ID AND F.CATEGORY=%s order by m.price",(category_name,))
	info=c.fetchall()
	foods=[]
	for ii in info:
		foods.append([])

	i=0
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

	return render(request,"food_category.html",{'food_list':food_list,'foods':foods,'category_name':category_name})

def all_restaurants(request):
	#print("all restaurants")

	c=connection.cursor()
	c.execute("select * from restaurant order by restaurant_name")
	restaurant_list=c.fetchall()
	qq="select AREA_NAME from AREA"
	c.execute(qq)

	area_list=[]
	for ii in c.fetchall():
		#print(ii[0])
		area_list.append(ii[0])
	form=priceForm()
	categories=[]
	c.execute("select DISTINCT category from Food")
	categories=c.fetchall()
	qq="select DISTINCT f.food_name from food f , menu m where f.food_id=m.food_id ORDER BY F.food_name";
	c.execute(qq)
	food_list=[]
	for ii in c.fetchall():
		food_list.append(ii[0])
	return render_to_response('all_restaurants.html',RequestContext(request,{'food_list':food_list,'categories':categories,'restaurants':restaurant_list,'area_list':area_list,'form':form}))
def show_restaurants(request,area,form_error=0): 
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
	return render_to_response("restaurants.html",RequestContext(request,{'area_name':area,'food_list':food_list,'form':form,'restaurants':restaurant_list,'area':area,'user':request.user,'categories':categories}))
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
	if not temp2:
		raise Http404("You don't have any food in your order List.Please go to menu page and add menu to your list")
	orderid=temp2[0]
	#employee=temp[0]
	c.execute("select menu_id,amount,orderinfo_id from order_info where order_id=%s",(temp2[0],))
	#c.execute(qq)
	temp2=c.fetchall()
	for ii in temp2:
		c.execute("select food_id, branch_id,price from menu where menu_id=%s and amount>=%s",(ii[0],ii[1],))
		#c.execute(qq)
		temp3=c.fetchone()
		if temp3:
			order_list.append([])
	print(order_list)
	if  len(order_list)==0:
		raise Http404("You don't have any food in your order List.Please go to menu page and add menu to your list")
	i=0
	for ii in temp2:
		c.execute("select food_id, branch_id,price from menu where menu_id=%s and amount>=%s",(ii[0],ii[1],))
		#c.execute(qq)
		temp3=c.fetchone()
		if not temp3:
			continue
		order_list[i].append(ii[1]) #amount
		order_list[i].append(temp3[2]) #price
		#i+=1
	
		c.execute("select food_name, category from food where food_id=%s",(temp3[0],))
		
		temp4=c.fetchone()
		order_list[i].append(temp4[0])#food name
		order_list[i].append(temp4[1])#category
		#i+=1

		c.execute("select b.address, b.dcharge,r.restaurant_name from branch b, restaurant r\
		 where b.restaurant_id=r.restaurant_id and b.branch_id=%s",(temp3[1],))
		#c.execute(qq)
		temp5=c.fetchone()
		order_list[i].append(temp5[0]) #restaurant address
		order_list[i].append(temp5[1])# charge
		order_list[i].append(temp5[2])#restaurant name
		order_list[i].append(ii[2])#orderinfo_id
		i+=1
	
	print(order_list)
	if request.method=='POST':
		form=orderForm(request.POST)
		if form.is_valid():
			area_id=form.cleaned_data['area']
			address=form.cleaned_data['address']
			print("ared id below")
			print(area_id)
			return order_submit(request,orderid,area_id,address)
			#return render(request,"order_success.html",RequestContext(request,{'order_list':order_list}))
		else:
			return render(request,"order.html",RequestContext(request,{'form':form,'order_list':order_list}))

	form=orderForm()
	return render(request,"order.html",RequestContext(request,{'orderid':orderid,'form':form,'order_list':order_list}))
def show_menu(request,branch_id):
	c=connection.cursor()
	qq="select F.food_name,F.category,M.price,M.menu_id,(select avg(rating_value) from RATING where MENU_ID=M.MENU_ID) from FOOD F, MENU M where F.food_id=M.food_id and M.branch_id={0} order by M.price".format(branch_id)
	c.execute(qq)
	return render(request,"menu.html",RequestContext(request,{'foods':c.fetchall(),'user':request.user,'branch':branch_id}))
def search_food(request):
	food_name=request.POST['search_food']
	print(food_name)
	c=connection.cursor()
	temp="%"+food_name.lower()+"%"
	c.execute("select F.food_name,F.category,M.price,M.menu_id,find_rating(m.menu_id),\
		M.amount,M.branch_id from food F , menu M where f.food_id=m.food_id \
		and lower(f.food_name) like %s order by m.price",(temp,))

	foods=c.fetchall()
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

	return render(request,"menu.html",RequestContext(request,{'search_name':food_name,'food_list':food_list,'foods':foodlist,'user':request.user,'food_search':foodsearch}))
def show_branches(request,restaurant_id):
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
def price_category(request):
	form=priceForm(request.POST)
	if form.is_valid():
		print("valid")
		price1=form.cleaned_data['price1']
		price2=form.cleaned_data['price2']
		c=connection.cursor()
		c.execute("SELECT M.BRANCH_ID,F.food_name,M.PRICE,find_rating(m.menu_id),M.menu_id, M.amount\
		FROM FOOD F, MENU M WHERE F.FOOD_ID=M.FOOD_ID AND M.price>=%s and M.price<=%s\
		 order by m.price",(price1,price2,))
		info=c.fetchall()
		foods=[]
		for ii in info:
			foods.append([])
			

		i=0
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
		return render(request,"food_category.html",{'foods':foods,'category_name':category_name,'price1':price1,'price2':price2})
	args={}
	args.update(csrf(request))
	args['form']=form
	return index(request,1)

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

def delete_item(request,table_name):
	

	c=connection.cursor()
	c.execute("select COLUMN_NAME from ALL_TAB_COLUMNS where TABLE_NAME=%s",(table_name.upper(),))
	columns=c.fetchall()
	n=len(columns)
	column_num=[]
	for pp in range(0,n):
		column_num.append(pp)

	column_list=[]
	for col in columns:
		column_list.append(col[0])
	column_list.reverse()
	
	items=[]
	print(table_name.upper())
	if table_name.upper()=="AREA":
		c.execute("select * from AREA order by area_name")
	elif table_name.upper()=="RESTAURANT":
		c.execute("select * from RESTAURANT order by restaurant_name")
	elif table_name.upper()=="FOOD":
		c.execute("select * from FOOD order by food_name")
	elif table_name.upper()=="BRANCH":
		c.execute("select * from BRANCH")
	elif table_name.upper()=="MENU":
		c.execute("select * from MENU")
	elif table_name.upper()=="EMPLOYEE":
		c.execute("select * from EMPLOYEE")	
	


	t=c.fetchall()
	for ii in t:
			items.append([])
	i=0
	for jj in t:
		for kk in range (0,n):
			items[i].append(jj[kk])
		i+=1

	return render(request,"delete_item.html",RequestContext(request,{'table_name':table_name,'column_list':column_list,'items':items}))

