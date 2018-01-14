# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('myapp', '0002_helo'),
    ]

    operations = [
        migrations.CreateModel(
            name='customer',
            fields=[
                ('customer_id', models.IntegerField(serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=30, null=True)),
                ('address', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'customer',
            },
        ),
        migrations.CreateModel(
            name='UserProfile',
            fields=[
                ('id', models.AutoField(serialize=False, auto_created=True, primary_key=True, verbose_name='ID')),
                ('first_name', models.CharField(max_length=30, null=True)),
                ('last_name', models.CharField(max_length=30, null=True)),
                ('address', models.TextField()),
                ('phone_numer', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL, unique=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='departments',
            name='manager',
        ),
        migrations.DeleteModel(
            name='helo',
        ),
        migrations.DeleteModel(
            name='departments',
        ),
        migrations.DeleteModel(
            name='employees',
        ),
    ]
