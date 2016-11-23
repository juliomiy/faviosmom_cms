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

from django.db import models
from datetime import datetime
import re

class Menuportions(models.Model):
    menu = models.ForeignKey('Menu')
    name = models.CharField(unique=True, max_length=255)
    unit_price = models.DecimalField(max_digits=10, decimal_places=2)
    available = models.BooleanField()
    insert_datetime = models.DateTimeField(default=datetime.now)
    update_datetime = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'MenuPortions'


    def __str__(self):  # __unicode__ on Python 2
        return self.name

class Orders(models.Model):
    userid = models.CharField(max_length=255)
    order_json = models.CharField(max_length=1000, blank=True, null=True)
    order_price = models.DecimalField(max_digits=10, decimal_places=2)
    order_tax = models.DecimalField(max_digits=10, decimal_places=2)
    order_total = models.DecimalField(max_digits=10, decimal_places=2)
    fulfilled = models.IntegerField()
    fulfilled_datetime = models.DateTimeField()
    insert_datetime = models.DateTimeField()
    update_datetime = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'Orders'


class BusinessDetail(models.Model):
    location = models.TextField(blank=True, null=True)  # This field type is a guess.
    closed_days = models.TextField(blank=True, null=True)  # This field type is a guess.
    insert_date = models.DateTimeField(default=datetime.now)
    update_date = models.DateTimeField(blank=True, null=True)
    current_location = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        managed = True
        db_table = 'business_detail'


class Menu(models.Model):
    short_description = models.CharField(max_length=255, blank=True, null=True)
    long_description = models.TextField(blank=True, null=True)
    name = models.CharField(unique=True, max_length=45)
    insert_date = models.DateTimeField(default=datetime.now)
    update_date = models.DateTimeField(blank=True, null=True)
    normalized_name = models.CharField(unique=True, max_length=45, blank=True, null=True)
    available = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'menu'


    def __str__(self):  # __unicode__ on Python 2
       return self.name


class MenuItems(models.Model):
    menu = models.ForeignKey(Menu)
    insert_date = models.DateTimeField(default=datetime.now)
    update_date = models.DateTimeField(blank=True, null=True)
    portion_size = models.CharField(max_length=45)
    name = models.CharField(max_length=45)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    available = models.BooleanField()
    photo_url = models.CharField(max_length=255, blank=True, null=True)
    article_url = models.CharField(max_length=255, blank=True, null=True)
    vegetarian = models.BooleanField()
    normalized_name = models.CharField(unique=True, max_length=45)

    class Meta:
        managed = True
        db_table = 'menu_items'


    def __str__(self):  # __unicode__ on Python 2
        return self.name


class Order(models.Model):
    insert_date = models.DateTimeField(default=datetime.now)
    update_date = models.DateTimeField(blank=True, null=True)
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

class PhraseToMenuitems(models.Model):
    long_phrase = models.CharField(unique=True, max_length=255)
    normalized = models.CharField(unique=True, max_length=255, blank=True, null=True)
    menuitem = models.ForeignKey(MenuItems)

    class Meta:
        managed = True
        db_table = 'phrase_to_menuitems'

    def save(self, *args, **kwargs):
        self.normalized = re.sub(r'[^a-zA-Z]','',self.long_phrase)
        super(PhraseToMenuitems, self).save(*args, **kwargs)

    def __str__(self):  # __unicode__ on Python 2
        return self.long_phrase

class TypeToMenuitems(models.Model):
    type = models.CharField(max_length=45)
    menuitem = models.ForeignKey(MenuItems)
    insert_date = models.DateTimeField(default=datetime.now)
    update_date = models.DateTimeField(blank=True, null=True)

    def __str__(self):  # __unicode__ on Python 2
        return self.type

    class Meta:
        managed = True
        db_table = 'type_to_menuitems'
        unique_together = [
            ("type", "menuitem"),
        ]