from django.conf.urls import url
from . import views

app_name = 'product'
urlpatterns = [
    url(r'^$', views.menu, name='menu'),
    url(r'^(?P<menu_id>[0-9]+)/$', views.menu_items, name='menu_list'),
    url(r'^vegetarian/$', views.menu_vegetarian, name='menu_vegetarian'),
    url(r'^(?P<menu_type>[a-zA-Z]+)/$', views.menu_items_by_type, name='menu_type'),
    url(r'^product/(?P<product_name>[a-zA-Z]+)/$', views.menu_item_by_name, name='product'),
    url(r'^shopping_cart/$', views.shopping_cart, name='shopping_cart'),
]