from django.shortcuts import render
from django.http import Http404
from .models import Menu, MenuItems, Order

# Create your views here.
def menu(request, menu_id=None):
    try:
        menu = Menu.objects.all()
    except Menu.DoesNotExist:
        raise Http404("Menu does not exist")
    return render(request, 'menu_test.html', {'menu': menu})

def menu_items(request,menu_id=None):
    try:
        menu = MenuItems.objects.filter(menu=menu_id)
    except menu.DoesNotExist:
        raise Http404("Menu does not exist")
    return render(request, 'menu_test.html', {'menu': menu})

def menu_vegetarian(request):
    try:
        menu = MenuItems.objects.values('name','normalized_name','one_liner','photo_url','article_url','portion_size','price','short_description').filter(vegetarian=True)
    except Menu.DoesNotExist:
        raise Http404("Menu does not exist")
    return render(request, 'menu_test.html', {'menu': menu})

def menu_items_by_type(request,menu_type):
    try:
        menu = Menu.objects.get(normalized_name=menu_type)
        menuitems = menu.menuitems_set.values('name','normalized_name','one-liner','photo_url','article_url','portion_size','price','short_description').all()
    except Menu.DoesNotExist:
        raise Http404("Menu does not exist")
    return render(request, 'menu_test.html', {'menu': menuitems})

def menu_item_by_name(request,product_name):
    try:
        product = MenuItems.objects.filter(normalized_name=product_name)
    except product.DoesNotExist:
        raise Http404("Menu does not exist")
    return render(request, 'product.html', {'product': product})

def shopping_cart(request):
    cart = None
    return render(request, 'shopping_cart.html', {'shopping_cart': cart})
