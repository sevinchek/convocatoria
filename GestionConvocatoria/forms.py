from django import forms
from .models import Convocatoria
from .models import ResulConv
from .models import ConvPers

class ConvForm(forms.ModelForm):

    class Meta:
        model = Convocatoria
        fields = ('NroConv', 'CodCli', 'FecPubli', 'FecBuenaPro',
        'Nomenclatura', 'FecReinicio', 'CodObjC', 'DescObjeto', 'CodSNIP', 'ValRefer', 'RutaDoc')

class ResulConvForm(forms.ModelForm):

    class Meta:
        model = ResulConv
        fields = ('NroConv', 'CorrConv', 'Empresa', 'FlgGana', 'EvalTec', 'EvalEcon', 'Observac')

class PersConvForm(forms.ModelForm):

    class Meta:
        model = ConvPers
        fields = ('CodPers', 'NroConv', 'CodCargo', 'Experiencia', 'ExpNroMeses', 'ExpNroDias', 'CorrProf', 'FlgCIPVigen')

class UnknownForm(forms.ModelForm):
    choices = forms.MultipleChoiceField(
        widget  = forms.CheckboxSelectMultiple,
    )
