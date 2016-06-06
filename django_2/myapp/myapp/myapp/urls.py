from django.conf.urls import  patterns, url 
from myapp import views,ajax
from myapp.ajax import submit_rating

urlpatterns = patterns('', 
	#url(r'^(?P<emp_id>\d+)/(?P<dept_name>\w+)/(?P<dept_id>\d+)/$' , newdept), 
	url(r'^$',views.index,name='index'),

	url(r'^admin/$',views.admin_site,name='admin'),

	url(r'^admin/insert_restaurant/$',views.insert_restaurant,name='insert_restaurant'),

	url(r'^admin/insert_area/$',views.insert_area,name='insert_area'),

	url(r'^admin/insert_branch/$',views.insert_branch,name='insert_branch'),

	url(r'^admin/insert_menu/$',views.insert_menu,name='insert_menu'),

	url(r'^admin/insert_employee/$',views.insert_employee,name='insert_employee'),

	url(r'^admin/all_tables/$',views.show_tables,name='all_tables'),

	url(r'^admin/delete_item/(?P<table_name>([\w]+[ ]*[\w]*))$',views.delete_item,name='delete_item'),

	url(r'^admin/update_item/(?P<table_name>([\w]+[ ]*[\w]*))$',views.update_item,name='update_item'),

	url(r'^search all foods/$',views.search_food,name='search_food'),

	url(r'^restaurants/$',views.all_restaurants,name='all_restaurants'),

	url(r'^restaurants/(?P<branch_id>[0-9]+)/$',views.show_menu,name='menu_list'),

	url(r'^restaurants/(?P<branch_id>[0-9]+)/(?P<menu_id>[0-9]+)/$',views.take_order,name='order'),
	
	url(r'^ajax_url/$',ajax.submit_rating,name='submit_rating'),
	
	url(r'^ajax_url/login_varify/$',ajax.varify_login,name='login_varify'),
	
	url(r'^ajax_url/area_varify/$',ajax.area_varify,name='area_varify'),
	#show all restaurants in area
	url(r'^restaurants/area/(?P<area>[\w]+)/$',views.show_restaurants,name='restaurant_list'),

	url(r'^restaurants/branches/(?P<restaurant_id>[\d]+)/$',views.show_branches,name='branches'),

	url(r'^order/$',views.take_order,name='order'),

	url(r'^foods/price_category/$',views.price_category,name='price_category'),

	url(r'^ajax_url/add_order/$',ajax.add_to_order,name='add_order'),

	url(r'^food_category/(?P<category_name>([\w]+[ ]*[\w]*))/$',views.show_food_category,name='food_category'),
)