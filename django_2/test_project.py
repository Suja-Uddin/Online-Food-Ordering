import pytest 

@pytest.mark.django_db
class TestProject:
    def test_restaurants_view(self,client):
        response = client.get('/myapp/restaurants/')
        assert len(response.context['food_list']) == 4000


    def test_index_view(self,client):
        response = client.get('/myapp/')
        assert len(response.context['categories']) == 90

    def test_index_area_view(self,client):
        response = client.get('/myapp/')
        assert len(response.context['area_list']) == 50

    def test_restaurants_view(self,client):
        response = client.get('/myapp/')
        assert len(response.context['food_list']) == 40

