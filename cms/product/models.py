# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals
from cms.models.pluginmodel import CMSPlugin
from django.db import models
from datetime import datetime
import re
import json

class BaseProductTable(models.Model):
    insert_datetime = models.DateTimeField(default=datetime.now)
    update_datetime = models.DateTimeField(blank=True, null=True)

    class Meta:
        abstract = True  # Set this model as Abstract

    def getNormalized(self,string):
        return re.sub(r'[^a-zA-Z]', '', string.lower())

class Menuportions(BaseProductTable):
    menu = models.ForeignKey('Menu')
    name = models.CharField(unique=True, max_length=255)
    unit_price = models.DecimalField(max_digits=10, decimal_places=2)
    available = models.BooleanField(default=False)

    class Meta:
        managed = True
        db_table = 'MenuPortion'


    def __str__(self):  # __unicode__ on Python 2
        return self.name

class Orders(BaseProductTable):
    userid = models.CharField(max_length=255)
    order_json = models.TextField(blank=True, null=True)
    order_price = models.DecimalField(max_digits=10, decimal_places=2)
    order_tax = models.DecimalField(max_digits=10, decimal_places=2)
    order_total = models.DecimalField(max_digits=10, decimal_places=2)
    delivery_charge = models.DecimalField(max_digits=5, decimal_places=2)
    fulfilled = models.BooleanField()
    fulfilled_datetime = models.DateTimeField()
    orderID = models.CharField(max_length=255,unique=True)

    class Meta:
        managed = True
        db_table = 'customer_order'

    def __str__(self):
        return self.order_json

class BusinessDetail(BaseProductTable):
    location = models.TextField(blank=True, null=True)  # This field type is a guess.
    closed_days = models.TextField(blank=True, null=True)  # This field type is a guess.
    current_location = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        managed = True
        db_table = 'business_detail'

    def save(self, *args, **kwargs):
        d = {
            'first_name': 'Guido',
            'second_name': 'Rossum',
            'titles': ['BDFL', 'Developer'],
        }
        self.location = json.dumps(d)

        if self.pk is not None:
            self.update_datetime = datetime.now()
        super(BusinessDetail, self).save(*args, **kwargs)

    def __str__(self):
        return self.location

class Menu(BaseProductTable):
    short_description = models.CharField(max_length=255, blank=True, null=True)
    long_description = models.TextField(blank=True, null=True)
    name = models.CharField(unique=True, max_length=45)
    normalized_name = models.CharField(unique=True, max_length=45, blank=True, null=True)
    available = models.BooleanField(default=False)
    photo_url = models.CharField(max_length=255, blank=True, null=True)
    article_url = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'menu'

    def save(self, *args, **kwargs):
        self.normalized_name = self.getNormalized(self.name)
        if self.pk is not None:
           self.update_datetime = datetime.now()

        super(Menu, self).save(*args, **kwargs)

    def __str__(self):  # __unicode__ on Python 2
       return self.name


class MenuItems(BaseProductTable):
    menu = models.ForeignKey(Menu)
    portion_size = models.CharField(max_length=45)
    name = models.CharField(unique=True, max_length=45)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    available = models.BooleanField(default=True)
    photo_url = models.CharField(max_length=255, blank=True, null=True)
    article_url = models.CharField(max_length=255, blank=True, null=True)
    vegetarian = models.BooleanField(default=False)
    normalized_name = models.CharField(unique=True, max_length=45)
    short_description = models.CharField(max_length=255, blank=True, null=True)
    long_description = models.TextField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'menu_items'

    def save(self, *args, **kwargs):
        self.normalized_name = self.getNormalized(self.name)
        if self.pk is not None:
            self.update_datetime = datetime.now()

        super(MenuItems, self).save(*args, **kwargs)

    def __str__(self):  # __unicode__ on Python 2
        return self.name


class Order(BaseProductTable):
    order = models.TextField()  # This field type is a guess.
    total_order_price = models.DecimalField(max_digits=9, decimal_places=2)
    sales_tax = models.DecimalField(max_digits=9, decimal_places=2)
    fulfilled = models.BooleanField()
    delivery_charge = models.DecimalField(max_digits=5, decimal_places=2)
    customer = models.CharField(max_length=255, blank=True, null=True)
    orderid = models.CharField(db_column='orderID', unique=True, max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'order'

    def __str__(self):
        return self.order

class PhraseToMenuitems(BaseProductTable):
    long_phrase = models.CharField(unique=True, max_length=255)
    normalized = models.CharField(unique=True, max_length=255, blank=True, null=True)
    menuitem = models.ForeignKey(MenuItems)

    class Meta:
        managed = True
        db_table = 'phrase_to_menuitems'

    def save(self, *args, **kwargs):
        self.normalized = self.getNormalized(self.long_phrase)
        if self.pk is not None:
            self.update_date = datetime.now()
        super(PhraseToMenuitems, self).save(*args, **kwargs)

    def __str__(self):  # __unicode__ on Python 2
        return ("Phrase: "  + self.long_phrase + "|| menuItem: " + self.menuitem.name)

class TypeToMenuitems(BaseProductTable):
    type = models.CharField(max_length=45)
    menuitem = models.ForeignKey(MenuItems)

    def save(self, *args, **kwargs):
        if self.pk is not None:
            self.update_datetime = datetime.now()
        super(TypeToMenuitems, self).save(*args, **kwargs)

    def __str__(self):  # __unicode__ on Python 2
        return ("Type: " + self.type + " MenuItem: " + self.menuitem.name)


    class Meta:
        managed = True
        db_table = 'type_to_menuitems'
        unique_together = [
            ("type", "menuitem"),
        ]