# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('GestionConvocatoria', '0003_auto_20180629_0856'),
    ]

    operations = [
        migrations.AlterField(
            model_name='convpers',
            name='FlgCIPVigen',
            field=models.CharField(max_length=1),
        ),
    ]
