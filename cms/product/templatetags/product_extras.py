from django import template
from django.template.defaultfilters import stringfilter
from django.http import Http404
from ..models import Menu, MenuItems

register = template.Library()

@register.inclusion_tag('promotions_fragment.html')
def promotion():
    try:
        menu = MenuItems.objects.all()
    except menu.DoesNotExist:
        raise Http404("Menu does not exist")
    return {'products': menu}

@register.filter
#@stringfilter
def currency(value): # Only one argument.
    """Converts a price to currency format"""
    if type(value).__name__  =='str':
        if value.isdigit():
           arg = float(value)
        else:
            return ''
    else:
        arg= value
    return '${:,.2f}'.format(arg)

@register.inclusion_tag('promotions_fragment.html')
def show_promotions():
    choices = {"test": 'hello world'}
    return {'choices': choices}


#register.filter('currency', currency)
