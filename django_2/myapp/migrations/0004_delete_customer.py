# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0003_auto_20151216_1231'),
    ]

    operations = [
        migrations.DeleteModel(
            name='customer',
        ),
    ]
