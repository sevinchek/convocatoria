# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('GestionConvocatoria', '0002_auto_20180611_1001'),
    ]

    operations = [
        migrations.AlterField(
            model_name='resulconv',
            name='NroConv',
            field=models.ForeignKey(db_column='NroConv', to='GestionConvocatoria.Convocatoria'),
        ),
    ]
