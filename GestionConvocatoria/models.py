from django.db import models

# Create your models here.

class Profesiones(models.Model):
    CodProf = models.IntegerField(null=False, primary_key=True)
    Grado = models.CharField(null=False, max_length=100)
    DesProf = models.CharField(null=False, max_length=30)
    Vigente = models.CharField(null=False, max_length=1)

#    def __str__(self):
#        return self.NroConv
    def __str__(self):
        return str(self.CodProf)


class Persona(models.Model):
    CodPers = models.IntegerField(null=False, primary_key=True)
    TipPersona = models.CharField(null=False, max_length=1)
    DesPersona = models.CharField(null=False, max_length=100)
    DesCorta = models.CharField(null=False, max_length=30)
    FlgCli = models.CharField(null=False, max_length=1)
    FlgEmplInt = models.CharField(null=False, max_length=1)
    FlgEExt = models.CharField(null=False, max_length=1)
    Direcc = models.CharField(null=False, max_length=100)
    CodDpto = models.CharField(null=False, max_length=2)
    CodProv = models.CharField(null=False, max_length=2)
    CodDist = models.CharField(null=False, max_length=2)
    Hobby = models.CharField(null=False, max_length=2000)
    Foto = models.CharField(null=False, max_length=100)
    FecNac = models.DateField(null=False)
    DNI = models.CharField(null=False, max_length=20)
    DescLicCond = models.CharField(null=False, max_length=20)
    FecVigLC = models.DateField(null=False)
    Observac = models.CharField(null=False, max_length=300)
    RutaDoc = models.CharField(null=False, max_length=300)
    Vigente = models.CharField(null=False, max_length=1)

#    def __str__(self):
#        return self.NroConv
    def __str__(self):
        return str(self.CodPers)


class Cargo(models.Model):
    CodCargo = models.IntegerField(null=False, primary_key=True)
    DesCargo = models.CharField(null=False, max_length=60)
    FlgMiEmpresa = models.CharField(null=False, max_length=1)
    Vigencia = models.CharField(null=False, max_length=1)

#    def __str__(self):
#        return self.NroConv
    def __str__(self):
        return str(self.CodCargo)


class ObjContrat(models.Model):
    CodObjC = models.IntegerField(null=False, primary_key=True)
    DescObjeto = models.CharField(null=False, max_length=40)
    Vigente = models.CharField(null=False, max_length=1)

#    def __str__(self):
#        return self.NroConv
    def __str__(self):
        return str(self.CodObjC)


class Cliente(models.Model):
    CodCli = models.OneToOneField('Persona', db_column='CodPers', on_delete=models.CASCADE, primary_key=True, null=False)
    CodSector = models.IntegerField(null=False)
    NroRuc = models.CharField(null=False, max_length=20)
    GerGral = models.IntegerField(null=False)
    Vigente = models.CharField(null=False, max_length=1)

#    def __str__(self):
#        return self.NroConv
    def __str__(self):
        return str(self.CodCli.DesPersona)


class PersProfesion(models.Model):
    CodPers = models.ForeignKey('Persona', db_column='CodPers', on_delete=models.CASCADE,null=False)
    CorrProf = models.IntegerField(null=False, primary_key=True)
    CodProf = models.ForeignKey('Profesiones', db_column='CodProf', on_delete=models.CASCADE, null=False)
    CodCentEst = models.IntegerField(null=False)
    NroCIP = models.CharField(null=False, max_length=10)
    FecCIPVig = models.DateField(null=False)
    Vigente = models.CharField(null=False, max_length=1)

#    def __str__(self):
#        return self.NroConv
    def __str__(self):
        return str(self.CorrProf)


class Convocatoria(models.Model):
    NroConv = models.AutoField(null=False, primary_key=True)
    CodCli = models.ForeignKey('Cliente', db_column='CodPers', on_delete=models.CASCADE, null=False)
    FecPubli = models.DateField(null=False)
    FecBuenaPro = models.DateField(null=False)
    Nomenclatura = models.CharField(null=False, max_length=100)
    FecReinicio = models.DateField(null=False)
    CodObjC = models.ForeignKey('ObjContrat', db_column='CodObjC', on_delete=models.CASCADE, null=False)
    DescObjeto = models.CharField(null=False, max_length=1000)
    CodSNIP = models.CharField(null=False, max_length=10)
    ValRefer = models.DecimalField(null=False, max_digits=9, decimal_places=2)
    RutaDoc = models.CharField(null=False, max_length=300)

#    def __str__(self):
#        return self.NroConv
    def __str__(self):
        return str(self.NroConv)


class ResulConv(models.Model):
    NroConv = models.ForeignKey('Convocatoria', db_column='NroConv', on_delete=models.CASCADE,null=False)
    CorrConv = models.IntegerField(null=False, primary_key=True)
    Empresa = models.CharField(null=False, max_length=200)
    FlgGana = models.CharField(null=False, max_length=1)
    EvalTec = models.DecimalField(null=False, max_digits=5, decimal_places=2)
    EvalEcon = models.DecimalField(null=False, max_digits=5, decimal_places=2)
    Observac = models.CharField(null=False, max_length=2000)

#    def __str__(self):
#        return self.CorrConv
    def __str__(self):
        return str(self.CorrConv)


class ConvPers(models.Model):
    NroConv = models.OneToOneField('Convocatoria', db_column='NroConv', on_delete=models.CASCADE, primary_key=True, null=False)
    CodPers = models.ForeignKey('Persona', db_column='CodPers', on_delete=models.CASCADE, null=False)
    CodCargo = models.ForeignKey('Cargo', db_column='CodCargo', on_delete=models.CASCADE, null=False)
    Experiencia = models.CharField(null=False, max_length=500)
    ExpNroMeses = models.IntegerField(null=False)
    ExpNroDias = models.IntegerField(null=False)
    CorrProf = models.ForeignKey('PersProfesion', db_column='CorrProf', on_delete=models.CASCADE, null=False)
    FlgCIPVigen = models.IntegerField(null=False)

    def __str__(self):
        return str(self.NroConv)
