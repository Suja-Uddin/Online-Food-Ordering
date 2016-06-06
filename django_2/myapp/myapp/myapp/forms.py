from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.db import connection
from django.core.exceptions import ValidationError
from django.utils.translation import ugettext_lazy as _



class MyRegistrationForm(UserCreationForm):
	first_name=forms.CharField()
	last_name=forms.CharField()
	email=forms.EmailField(required=True)
	address=forms.CharField()

	class Meta:
		model=User 
		fields=('first_name','last_name','address','username','email','password1','password2')

	def save(self,commit=True):
		user=super(MyRegistrationForm,self).save(commit=False)
		username=self.cleaned_data['username']
		user.first_name=self.cleaned_data['first_name']
		user.last_name=self.cleaned_data['last_name']
		user.email=self.cleaned_data['email']
		user.address=self.cleaned_data['address']
		print(username)
		print(user.address)
		c=connection.cursor()
		c.execute("select max(customer_id) from customer")
		id=c.fetchone()
		print(id[0])
		c.execute("insert into customer values(%d,'%s','%s','%s')"%(id[0]+1,user.first_name,user.address,username))
		if commit:
			user.save()
		return user
class priceForm(forms.Form):
	price1=forms.DecimalField(label='Enter lower price',required=True,min_value=0)
	price2=forms.DecimalField(label='Enter upper price',required=True,min_value=0)
	
	def clean_price2(self):
		print(self.cleaned_data['price1'])
		if self.cleaned_data['price1'] and self.cleaned_data['price2']:

			if self.cleaned_data['price1']>self.cleaned_data['price2']:
				print("heredjfkj")
				raise ValidationError(
				    _('Invalid range: %(value1)s is greater than %(value2)s '),
				    params={'value1': self.cleaned_data['price1'],'value2':
				    	self.cleaned_data['price2']
				    },
				)
		return self.cleaned_data['price2']


class orderForm(forms.Form):
	qq="select initcap(area_name),area_id from Area order by initcap(area_name)"
	c=connection.cursor()
	c.execute(qq)
	t=c.fetchall()

	temp=[]
	i=0
	for ii in t:
		
		temp.append((ii[1],ii[0]))
		i+=1

	area = forms.ChoiceField(label='Enter your area',choices=temp,required=True)
	address=forms.CharField(label='Enter the delivery address',required=True)

class foodForm(forms.Form):
	food = forms.CharField(label='Food Name')
	category = forms.CharField(label='Category Name')

class restaurantForm(forms.Form):
	restaurant = forms.CharField(label='Restaurant Name')

class areaForm(forms.Form):
	area = forms.CharField(label='Area Name')

	
class branchForm(forms.Form):
	qq="select initcap(area_name),area_id from Area order by initcap(area_name)"
	c=connection.cursor()
	c.execute(qq)
	t=c.fetchall()

	area_list=[]
	
	for ii in t:
		
		area_list.append((ii[1],ii[0]))
		
	qq="select initcap(restaurant_name),restaurant_id from Restaurant order by initcap(restaurant_name)"
	c.execute(qq)
	k=c.fetchall()

	restaurant_list=[]
	j=0
	for jj in k:
		
		restaurant_list.append((jj[1],jj[0]))
		j+=1
	area = forms.ChoiceField(label='Area Name',choices=area_list,required=True)
	restaurant = forms.ChoiceField(label='Restaurant Name',choices=restaurant_list,required=True)
	address = forms.CharField(label='Branch Address')
	dcharge = forms.DecimalField(label='Delivery Charge',required=True,min_value=0)

class update_branch(forms.Form):
	area_id = forms.DecimalField(label='Area ID',required=True)
	restaurant_id = forms.DecimalField(label='Restaurant ID',required=True)
	address = forms.CharField(label='Branch Address')
	dcharge = forms.DecimalField(label='Delivery Charge',required=True,min_value=0)


class menuForm(forms.Form):
	qq="select initcap(food_name),food_id from Food order by initcap(food_name)"
	c=connection.cursor()
	c.execute(qq)
	t=c.fetchall()

	food_list=[]
	
	for ii in t:
		
		food_list.append((ii[1],ii[0]))
		
	food = forms.ChoiceField(label='Food Name',choices=food_list)
	branch_id = forms.IntegerField(label='Branch ID',required=True,min_value=0)
	price = forms.DecimalField(label='Food Price',min_value=0)
	amount = forms.IntegerField(label='Available Amount',required=True,min_value=0)

class update_menu(forms.Form):
	food_id = forms.IntegerField(label='Food ID',required=True)
	branch_id = forms.IntegerField(label='Branch ID',required=True,min_value=0)
	price = forms.DecimalField(label='Food Price',min_value=0)
	amount = forms.IntegerField(label='Available Amount',required=True,min_value=0)

class employeeForm(forms.Form):
	BIRTH_YEAR_CHOICES = ('1980', '1981', '1982')
	qq="select initcap(area_name),area_id from area order by initcap(area_name)"
	c=connection.cursor()
	c.execute(qq)
	t=c.fetchall()

	area_list=[]
	
	for ii in t:
		
		area_list.append((ii[1],ii[0]))
		
	area = forms.ChoiceField(label='Area Name',choices=area_list)
	name = forms.CharField(label='Employee Name',required=True)
	phone = forms.CharField(label='Phone Number')
	hire_date = forms.DateField(label='Hire Date')
	salary = forms.DecimalField(label='Salary',required=True,min_value=0)

class update_employee(forms.Form):
	area_id = forms.IntegerField(label='Area ID')
	name = forms.CharField(label='Employee Name',required=True)
	phone = forms.CharField(label='Phone Number')
	hire_date = forms.DateField(label='Hire Date')
	salary = forms.DecimalField(label='Salary',required=True,min_value=0)
