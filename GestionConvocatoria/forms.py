from django import forms
from .models import Convocatoria

class ConvForm(forms.ModelForm):

    class Meta:
        model = Convocatoria
        fields = ('NroConv', 'CodCli', 'FecPubli', 'FecBuenaPro',
        'Nomenclatura', 'FecReinicio', 'CodObjC', 'DescObjeto', 'CodSNIP', 'ValRefer', 'RutaDoc')
