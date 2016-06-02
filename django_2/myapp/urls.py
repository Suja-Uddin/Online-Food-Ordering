from django.conf.urls import  patterns, url 
from myapp import views,ajax
from myapp.ajax import submit_rating

urlpatterns = patterns('', 
	#url(r'^(?P<emp_id>\d+)/(?P<dept_name>\w+)/(?P<dept_id>\d+)/$' , newdept), 
	url(r'^$',views.index,name='index'),

	url(r'^search all foods/$',views.search_food,name='search_food'),

		#show all foods in price range
	url(r'^foods/price_category/$',views.price_category,name='price_category'),

	url(r'^search all foods/(?P<food>[\w]+)/page/(?P<pagination>[\d]+)/$',views.search_food,
		name='search_food_pagination'),

	url(r'^restaurants/$',views.all_restaurants,name='all_restaurants'),

	url(r'^restaurants/page/(?P<pagination>[\d]+)/$',views.all_restaurants,
		name='all_restaurants_pagination'),

	url(r'^restaurants/(?P<branch_id>[0-9]+)/$',views.show_menu,name='menu_list'),

	#search in the branch by price range
	url(r'^restaurant/(?P<branch_id>[\d]+)/search by price/$',views.branch_price_category,name='branch_price_category'),
	#search in the area by price.shows all  related branches 
	url(r'^restaurant/(?P<branch_id>[\d]+)/food_category/(?P<category_name>([\w]+[ ]*[\w]*))/$',views.branch_food_category,name='branch_food_category'),
	
	url(r'^restaurants/(?P<branch_id>[0-9]+)/page/(?P<pagination>[\d]+)/$',views.show_menu,
		name='menu_list_pagination'),

	url(r'^restaurants/(?P<branch_id>[0-9]+)/(?P<menu_id>[0-9]+)/$',views.take_order,name='order'),
	
	url(r'^ajax_url/$',ajax.submit_rating,name='submit_rating'),
	
	url(r'^ajax_url/login_varify/$',ajax.varify_login,name='login_varify'),
	
	url(r'^ajax_url/area_varify/$',ajax.area_varify,name='area_varify'),
	#show all restaurants in area
	url(r'^restaurants/area/(?P<area>[\w]+)/$',views.show_restaurants,name='restaurant_list'),

	url(r'^restaurants/area/(?P<area>[\w]+)/page/(?P<pagination>[\d]+)/$',views.show_restaurants,
		name='restaurant_list_pagination'),

	url(r'^restaurants/area/(?P<area>[\w]+)/search by price/$',views.area_price_category,
		name='area_price_category'),
	#search in the area by  food category .show all related branches 
	url(r'^restaurants/area/(?P<area>[\w]+)/search by category/(?P<category_name>([\w]+[ ]*[\w]*))/$',
		views.area_food_category,name='area_food_category'),

	url(r'^restaurants/branches/(?P<restaurant_id>[\d]+)/$',views.show_branches,name='branches'),

	url(r'^restaurants/branches/(?P<restaurant_id>[\d]+)/page/(?P<pagination>[\d]+)/$',views.show_branches,name='branches_pagination'),

	url(r'^order/$',views.take_order,name='order'),

	url(r'^foods/price_category/$',views.price_category,name='price_category'),

	url(r'^foods/price_category/page/(?P<pagination>[\d]+)/$',views.price_category,name='price_category_pagination'),

	url(r'^ajax_url/add_order/$',ajax.add_to_order,name='add_order'),

	url(r'^food_category/(?P<category_name>([\w]+[ ]*[\w]*))/$',views.show_food_category,name='food_category'),

	url(r'^search all foods/(?P<food_name>([\w]+[ ]*[\w]*))/food_category/(?P<category_name>([\w]+[ ]*[\w]*))/$',views.show_food_category_with_name,
		name='food_category_with_name'),
	
	url(r'^search all foods/(?P<food_name>([\w]+[ ]*[\w]*))/food_category/(?P<category_name>([\w]+[ ]*[\w]*))/page/(?P<pagination>[\d]+)/$',views.show_food_category_with_name,
		name='food_category_with_name_pagination'),

	url(r'^food_category/(?P<category_name>([\w]+[ ]*[\w]*))/page/(?P<pagination>[\d]+)/$',views.show_food_category,name='food_category_pagination'),

	url(r'^ajax_url/search area/$',ajax.search_area,name='search_area_ajax'),

	url(r'^ajax_url/search food/$',ajax.search_food,name='search_food_ajax'),
)