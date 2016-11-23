from django.contrib import admin
from .models import Menu
from .models import MenuItems
from .models import TypeToMenuitems
from .models import Order
from .models import BusinessDetail
from .models import  Menuportions
from .models import PhraseToMenuitems

#@admin.register(Menu,MenuItems,Menuportions,PhraseToMenuitems,BusinessDetail,Order)

class MenuAdmin(admin.ModelAdmin):
    fields = ('name',)

class MenuItemsAdmin(admin.ModelAdmin):
    exclude = ('insert_date','update_date','normalized_name',)

class MenuportionsAdmin(admin.ModelAdmin):
    pass

class TypeToMenuitemsAdmin(admin.ModelAdmin):
    exclude = ('insert_date','update_date',)

class PhraseToMenuitemsAdmin(admin.ModelAdmin):
    fields = ('long_phrase','menuitem')
    exclude = ('normalized',)

class BusinessDetailAdmin(admin.ModelAdmin):
    exclude = ('insert_date','update_date',)


class OrderAdmin(admin.ModelAdmin):
    exclude = ('insert_date','update_date',)

# Register your models here.
admin.site.register(Menu,MenuAdmin)
admin.site.register(MenuItems,MenuItemsAdmin)
admin.site.register(Menuportions,MenuportionsAdmin)
admin.site.register(PhraseToMenuitems,PhraseToMenuitemsAdmin)
admin.site.register(BusinessDetail,BusinessDetailAdmin)
admin.site.register(Order,OrderAdmin)
admin.site.register(TypeToMenuitems,TypeToMenuitemsAdmin)
