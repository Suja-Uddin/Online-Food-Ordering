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