import pytest 

@pytest.mark.django_db
class TestProject:

    def test_index_view(self,client):
        response = client.get('/myapp/')
        assert response.status_code == 100

    def test_food_category_view(self,client):
        response = client.get('/myappp/food_category/')
        
        assert response.status_code == 101
        assert (response.context['pagination'])==3

    def test_restaurants_view(self,client):
        response = client.get('/myapp/restaurants/')
        assert response.status_code == 102

    def test_area_view(self,client):
        response = client.get('/myapp/restaurants/area/Dhanmondi/')
        assert response.status_code == 103

    def test_menu_view(self,client):
        response = client.get('/myapp/restaurants/1/')
        assert response.status_code == 104




    
