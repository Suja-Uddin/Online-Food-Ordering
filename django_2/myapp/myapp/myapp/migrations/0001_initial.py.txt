# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='departments',
            fields=[
                ('department_id', models.IntegerField(primary_key=True, serialize=False)),
                ('department_name', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'departments',
            },
        ),
        migrations.CreateModel(
            name='employees',
            fields=[
                ('employee_id', models.IntegerField(db_column='employee_id', primary_key=True, serialize=False)),
                ('first_name', models.CharField(max_length=30, null=True)),
                ('last_name', models.CharField(max_length=30)),
                ('email', models.CharField(max_length=23)),
            ],
            options={
                'db_table': 'employees',
            },
        ),
        migrations.AddField(
            model_name='departments',
            name='manager',
            field=models.ForeignKey(to='myapp.employees', db_column='manager_id', null=True),
        ),
    ]
