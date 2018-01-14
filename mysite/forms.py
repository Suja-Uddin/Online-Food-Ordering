from django import forms
from django.contrib.auth.models import User
from django.db import connection
from django.contrib.auth.forms import UserCreationForm

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