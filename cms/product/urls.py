from django.conf.urls import url
from . import views

app_name = 'product'
urlpatterns = [
    url(r'^$', views.menu, name='menu'),
    url(r'^(?P<menu_id>[0-9]+)/$', views.menu_items, name='menu_list'),
]