from django.contrib import admin
from .models import Menu
from .models import MenuItems
from .models import TypeToMenuitems
from .models import Orders
from .models import BusinessDetail
from .models import  Menuportions
from .models import PhraseToMenuitems

#@admin.register(Menu,MenuItems,Menuportions,PhraseToMenuitems,BusinessDetail,Order)

class MenuAdmin(admin.ModelAdmin):
    exclude = ('insert_datetime','update_datetime','normalized_name')

class MenuItemsAdmin(admin.ModelAdmin):
    exclude = ('insert_datetime','update_datetime','normalized_name',)
    ordering = ('menu',)

class MenuportionsAdmin(admin.ModelAdmin):
    pass

class TypeToMenuitemsAdmin(admin.ModelAdmin):
    exclude = ('insert_datetime','update_datetime',)

class PhraseToMenuitemsAdmin(admin.ModelAdmin):
    fields = ('long_phrase','menuitem')
    exclude = ('normalized','insert_datetime','update_datetime')
    ordering = ('menuitem',)

class BusinessDetailAdmin(admin.ModelAdmin):
    exclude = ('insert_datetime','update_datetime',)


class OrderAdmin(admin.ModelAdmin):
    exclude = ('insert_datetime','update_datetime',)


# Register your models here.
admin.site.register(Menu,MenuAdmin)
admin.site.register(MenuItems,MenuItemsAdmin)
admin.site.register(Menuportions,MenuportionsAdmin)
admin.site.register(PhraseToMenuitems,PhraseToMenuitemsAdmin)
admin.site.register(BusinessDetail,BusinessDetailAdmin)
admin.site.register(Orders,OrderAdmin)
admin.site.register(TypeToMenuitems,TypeToMenuitemsAdmin)
