# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('GestionConvocatoria', '0002_auto_20180611_1001'),
    ]

    operations = [
        migrations.AlterField(
            model_name='convpers',
            name='CodPers',
            field=models.OneToOneField(db_column='CodPers', to='GestionConvocatoria.Persona', serialize=False, primary_key=True),
        ),
        migrations.AlterField(
            model_name='convpers',
            name='NroConv',
            field=models.ForeignKey(to='GestionConvocatoria.Convocatoria', db_column='NroConv'),
        ),
        migrations.AlterField(
            model_name='resulconv',
            name='NroConv',
            field=models.ForeignKey(to='GestionConvocatoria.Convocatoria', db_column='NroConv'),
        ),
    ]
