from django.conf.urls import  patterns, url 
from myapp import views,ajax
from myapp.ajax import submit_rating

urlpatterns = patterns('', 
	#url(r'^(?P<emp_id>\d+)/(?P<dept_name>\w+)/(?P<dept_id>\d+)/$' , newdept), 
	url(r'^$',views.index,name='index'),

	url(r'^search all foods/$',views.search_food,name='search_food'),

	url(r'^search all foods/(?P<food>[\w]+)/page/(?P<pagination>[\d]+)/$',views.search_food,name='search_food_pagination'),

	url(r'^restaurants/$',views.all_restaurants,name='all_restaurants'),

	url(r'^restaurants/page/(?P<pagination>[\d]+)/$',views.all_restaurants,name='all_restaurants_pagination'),

	url(r'^restaurants/(?P<branch_id>[0-9]+)/$',views.show_menu,name='menu_list'),

	url(r'^restaurants/(?P<branch_id>[0-9]+)/page/(?P<pagination>[\d]+)/$',views.show_menu,name='menu_list_pagination'),

	url(r'^restaurants/(?P<branch_id>[0-9]+)/(?P<menu_id>[0-9]+)/$',views.take_order,name='order'),
	
	url(r'^ajax_url/$',ajax.submit_rating,name='submit_rating'),
	
	url(r'^ajax_url/login_varify/$',ajax.varify_login,name='login_varify'),
	
	url(r'^ajax_url/area_varify/$',ajax.area_varify,name='area_varify'),
	#show all restaurants in area
	url(r'^restaurants/area/(?P<area>[\w]+)/$',views.show_restaurants,name='restaurant_list'),

	url(r'^restaurants/area/(?P<area>[\w]+)/page/(?P<pagination>[\d]+)/$',views.show_restaurants,name='restaurant_list_pagination'),

	url(r'^restaurants/branches/(?P<restaurant_id>[\d]+)/$',views.show_branches,name='branches'),

	url(r'^restaurants/branches/(?P<restaurant_id>[\d]+)/page/(?P<pagination>[\d]+)/$',views.show_branches,name='branches_pagination'),

	url(r'^order/$',views.take_order,name='order'),

	url(r'^foods/price_category/$',views.price_category,name='price_category'),

	url(r'^foods/price_category/page/(?P<pagination>[\d]+)/$',views.price_category,name='price_category_pagination'),

	url(r'^ajax_url/add_order/$',ajax.add_to_order,name='add_order'),

	url(r'^food_category/(?P<category_name>([\w]+[ ]*[\w]*))/$',views.show_food_category,name='food_category'),
	
	url(r'^food_category/(?P<category_name>([\w]+[ ]*[\w]*))/page/(?P<pagination>[\d]+)/$',views.show_food_category,name='food_category_pagination'),
)