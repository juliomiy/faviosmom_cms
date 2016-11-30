# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BusinessDetail',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('location', models.TextField(null=True, blank=True)),
                ('closed_days', models.TextField(null=True, blank=True)),
                ('insert_date', models.DateTimeField(default=datetime.datetime.now)),
                ('update_date', models.DateTimeField(null=True, blank=True)),
                ('current_location', models.TextField(null=True, blank=True)),
            ],
            options={
                'db_table': 'business_detail',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Menu',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('insert_date', models.DateTimeField(default=datetime.datetime.now)),
                ('update_date', models.DateTimeField(null=True, blank=True)),
                ('short_description', models.CharField(max_length=255, null=True, blank=True)),
                ('long_description', models.TextField(null=True, blank=True)),
                ('name', models.CharField(unique=True, max_length=45)),
                ('normalized_name', models.CharField(max_length=45, unique=True, null=True, blank=True)),
                ('available', models.BooleanField()),
            ],
            options={
                'db_table': 'menu',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='MenuItems',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('insert_date', models.DateTimeField(default=datetime.datetime.now)),
                ('update_date', models.DateTimeField(null=True, blank=True)),
                ('portion_size', models.CharField(max_length=45)),
                ('name', models.CharField(max_length=45)),
                ('price', models.DecimalField(max_digits=5, decimal_places=2)),
                ('available', models.BooleanField()),
                ('photo_url', models.CharField(max_length=255, null=True, blank=True)),
                ('article_url', models.CharField(max_length=255, null=True, blank=True)),
                ('vegetarian', models.BooleanField()),
                ('normalized_name', models.CharField(unique=True, max_length=45)),
                ('menu', models.ForeignKey(to='product.Menu')),
            ],
            options={
                'db_table': 'menu_items',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Menuportions',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('insert_date', models.DateTimeField(default=datetime.datetime.now)),
                ('update_date', models.DateTimeField(null=True, blank=True)),
                ('name', models.CharField(unique=True, max_length=255)),
                ('unit_price', models.DecimalField(max_digits=10, decimal_places=2)),
                ('available', models.BooleanField()),
                ('insert_datetime', models.DateTimeField(default=datetime.datetime.now)),
                ('update_datetime', models.DateTimeField(null=True, blank=True)),
                ('menu', models.ForeignKey(to='product.Menu')),
            ],
            options={
                'db_table': 'MenuPortions',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('insert_date', models.DateTimeField(default=datetime.datetime.now)),
                ('update_date', models.DateTimeField(null=True, blank=True)),
                ('order', models.TextField()),
                ('total_order_price', models.DecimalField(max_digits=9, decimal_places=2)),
                ('sales_tax', models.DecimalField(max_digits=9, decimal_places=2)),
                ('fulfilled', models.BooleanField()),
                ('delivery_charge', models.DecimalField(max_digits=5, decimal_places=2)),
                ('customer', models.CharField(max_length=255, null=True, blank=True)),
                ('orderid', models.CharField(max_length=255, unique=True, null=True, db_column='orderID', blank=True)),
            ],
            options={
                'db_table': 'order',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Orders',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('userid', models.CharField(max_length=255)),
                ('order_json', models.CharField(max_length=1000, null=True, blank=True)),
                ('order_price', models.DecimalField(max_digits=10, decimal_places=2)),
                ('order_tax', models.DecimalField(max_digits=10, decimal_places=2)),
                ('order_total', models.DecimalField(max_digits=10, decimal_places=2)),
                ('fulfilled', models.IntegerField()),
                ('fulfilled_datetime', models.DateTimeField()),
                ('insert_datetime', models.DateTimeField()),
                ('update_datetime', models.DateTimeField(null=True, blank=True)),
            ],
            options={
                'db_table': 'Orders',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='PhraseToMenuitems',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('insert_date', models.DateTimeField(default=datetime.datetime.now)),
                ('update_date', models.DateTimeField(null=True, blank=True)),
                ('long_phrase', models.CharField(unique=True, max_length=255)),
                ('normalized', models.CharField(max_length=255, unique=True, null=True, blank=True)),
                ('menuitem', models.ForeignKey(to='product.MenuItems')),
            ],
            options={
                'db_table': 'phrase_to_menuitems',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='TypeToMenuitems',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('insert_date', models.DateTimeField(default=datetime.datetime.now)),
                ('update_date', models.DateTimeField(null=True, blank=True)),
                ('type', models.CharField(max_length=45)),
                ('menuitem', models.ForeignKey(to='product.MenuItems')),
            ],
            options={
                'db_table': 'type_to_menuitems',
                'managed': True,
            },
        ),
        migrations.AlterUniqueTogether(
            name='typetomenuitems',
            unique_together=set([('type', 'menuitem')]),
        ),
    ]
