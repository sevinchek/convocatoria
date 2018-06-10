# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Cargo',
            fields=[
                ('CodCargo', models.IntegerField(serialize=False, primary_key=True)),
                ('DesCargo', models.CharField(max_length=60)),
                ('FlgMiEmpresa', models.CharField(max_length=1)),
                ('Vigencia', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='Convocatoria',
            fields=[
                ('NroConv', models.IntegerField(serialize=False, primary_key=True)),
                ('FecPubli', models.DateField()),
                ('FecBuenaPro', models.DateField()),
                ('Nomenclatura', models.CharField(max_length=100)),
                ('FecReinicio', models.DateField()),
                ('DescObjeto', models.CharField(max_length=1000)),
                ('CodSNIP', models.CharField(max_length=10)),
                ('ValRefer', models.DecimalField(decimal_places=2, max_digits=9)),
                ('RutaDoc', models.CharField(max_length=300)),
            ],
        ),
        migrations.CreateModel(
            name='ObjContrat',
            fields=[
                ('CodObjC', models.IntegerField(serialize=False, primary_key=True)),
                ('DescObjeto', models.CharField(max_length=40)),
                ('Vigente', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='Persona',
            fields=[
                ('CodPers', models.IntegerField(serialize=False, primary_key=True)),
                ('TipPersona', models.CharField(max_length=1)),
                ('DesPersona', models.CharField(max_length=100)),
                ('DesCorta', models.CharField(max_length=30)),
                ('FlgCli', models.CharField(max_length=1)),
                ('FlgEmplInt', models.CharField(max_length=1)),
                ('FlgEExt', models.CharField(max_length=1)),
                ('Direcc', models.CharField(max_length=100)),
                ('CodDpto', models.CharField(max_length=2)),
                ('CodProv', models.CharField(max_length=2)),
                ('CodDist', models.CharField(max_length=2)),
                ('Hobby', models.CharField(max_length=2000)),
                ('Foto', models.CharField(max_length=100)),
                ('FecNac', models.DateField()),
                ('DNI', models.CharField(max_length=20)),
                ('DescLicCond', models.CharField(max_length=20)),
                ('FecVigLC', models.DateField()),
                ('Observac', models.CharField(max_length=300)),
                ('RutaDoc', models.CharField(max_length=300)),
                ('Vigente', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='PersProfesion',
            fields=[
                ('CorrProf', models.IntegerField(serialize=False, primary_key=True)),
                ('CodCentEst', models.IntegerField()),
                ('NroCIP', models.CharField(max_length=10)),
                ('FecCIPVig', models.DateField()),
                ('Vigente', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='Profesiones',
            fields=[
                ('CodProf', models.IntegerField(serialize=False, primary_key=True)),
                ('Grado', models.CharField(max_length=100)),
                ('DesProf', models.CharField(max_length=30)),
                ('Vigente', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='ResulConv',
            fields=[
                ('CorrConv', models.IntegerField(serialize=False, primary_key=True)),
                ('Empresa', models.CharField(max_length=200)),
                ('FlgGana', models.CharField(max_length=1)),
                ('EvalTec', models.DecimalField(decimal_places=2, max_digits=5)),
                ('EvalEcon', models.DecimalField(decimal_places=2, max_digits=5)),
                ('Observac', models.CharField(max_length=2000)),
            ],
        ),
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('CodCli', models.OneToOneField(serialize=False, db_column='CodPers', to='GestionConvocatoria.Persona', primary_key=True)),
                ('CodSector', models.IntegerField()),
                ('NroRuc', models.CharField(max_length=20)),
                ('GerGral', models.IntegerField()),
                ('Vigente', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='ConvPers',
            fields=[
                ('NroConv', models.OneToOneField(serialize=False, db_column='NroConv', to='GestionConvocatoria.Convocatoria', primary_key=True)),
                ('Experiencia', models.CharField(max_length=500)),
                ('ExpNroMeses', models.IntegerField()),
                ('ExpNroDias', models.IntegerField()),
                ('FlgCIPVigen', models.IntegerField()),
                ('CodCargo', models.ForeignKey(db_column='CodCargo', to='GestionConvocatoria.Cargo')),
                ('CodPers', models.ForeignKey(db_column='CodPers', to='GestionConvocatoria.Persona')),
            ],
        ),
        migrations.AddField(
            model_name='resulconv',
            name='NroConv',
            field=models.OneToOneField(db_column='NroConv', to='GestionConvocatoria.Convocatoria'),
        ),
        migrations.AddField(
            model_name='persprofesion',
            name='CodPers',
            field=models.ForeignKey(db_column='CodPers', to='GestionConvocatoria.Persona'),
        ),
        migrations.AddField(
            model_name='persprofesion',
            name='CodProf',
            field=models.ForeignKey(db_column='CodProf', to='GestionConvocatoria.Profesiones'),
        ),
        migrations.AddField(
            model_name='convocatoria',
            name='CodObjC',
            field=models.ForeignKey(db_column='CodObjC', to='GestionConvocatoria.ObjContrat'),
        ),
        migrations.AddField(
            model_name='convpers',
            name='CorrProf',
            field=models.ForeignKey(db_column='CorrProf', to='GestionConvocatoria.PersProfesion'),
        ),
        migrations.AddField(
            model_name='convocatoria',
            name='CodCli',
            field=models.ForeignKey(db_column='CodPers', to='GestionConvocatoria.Cliente'),
        ),
    ]
