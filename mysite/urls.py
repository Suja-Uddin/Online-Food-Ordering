"""mysite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import patterns,include, url
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^myapp/', include('myapp.urls',namespace="myapp")),
    url(r'^accounts/login/$','mysite.views.login',name='login'),
    url(r'^accounts/auth/$','mysite.views.auth_view',name='auth'),
    url(r'^accounts/invalid/$','mysite.views.invalid_login',name='invalid_login'),
    url(r'^accounts/logout/$','mysite.views.logout',name='logout'),
    url(r'^accounts/register/$','mysite.views.register_user',name='register')
)
