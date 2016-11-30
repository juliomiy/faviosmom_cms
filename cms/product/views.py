from django.shortcuts import render
from django.http import Http404
from .models import Menu, MenuItems

# Create your views here.
def menu(request, menu_id=None):
    try:
        menu = Menu.objects.all()
    except menu.DoesNotExist:
        raise Http404("Menu does not exist")
    return render(request, 'menu_test.html', {'menu': menu})

def menu_items(request,menu_id=None):
    try:
        menu = MenuItems.objects.filter(menu=menu_id)
    except menu.DoesNotExist:
        raise Http404("Menu does not exist")
    return render(request, 'menu_test.html', {'menu': menu})

def vegetarian(request):
    pass

def pork(request):
    pass
