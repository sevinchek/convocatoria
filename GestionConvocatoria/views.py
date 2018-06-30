from django.shortcuts import render, get_object_or_404
from django.utils import timezone
from .models import Convocatoria
from .models import Cliente
from .models import ObjContrat
from .models import ResulConv
from .models import ConvPers
from .forms import ConvForm
from .forms import ResulConvForm
from .forms import PersConvForm
from django.shortcuts import redirect
from django.db.models import Q

# Create your views here.

def user_conv_list(request):
    convocatorias = Convocatoria.objects.select_related('CodCli')
    clientes = Cliente.objects.select_related('CodCli')
    objcontrats = ObjContrat.objects.all()
    return render(request, 'GestionConvocatoria/user_conv_list.html', {'convocatorias': convocatorias, 'clientes': clientes, 'objcontrats': objcontrats})

def conv_list(request):
    convocatorias = Convocatoria.objects.select_related('CodCli')
    clientes = Cliente.objects.select_related('CodCli')
    objcontrats = ObjContrat.objects.all()
    if request.method == "POST":
        form = ConvForm(request.POST)
        if form.is_valid():
                conv = form.save(commit=False)
                conv.save()
                return redirect('indexadmin')
    else:
        form = ConvForm()
    return render(request, 'GestionConvocatoria/conv_list.html', {'convocatorias': convocatorias, 'clientes': clientes, 'objcontrats': objcontrats, 'form': form})

def conv_detail(request, pk):
    #resultados = get_object_or_404(ResulConv, NroConv=pk)

    #try:
    num = pk
    resultados = ResulConv.objects.all().filter(NroConv=pk)
    if request.method == "POST":

        if request.method == 'POST':
            recommendations=request.POST.getlist('recommendations')
            ResulConv.objects.all().update(FlgGana="S")
            ResulConv.objects.all().filter(~Q(CorrConv=recommendations[0])).update(FlgGana="N")

        form = ResulConvForm(request.POST)
        if form.is_valid():
                conv = form.save(commit=False)
                conv.save()
                return redirect('indexadmin')
    else:
        form = ResulConvForm()
    return render(request, 'GestionConvocatoria/conv_resul.html', {'resultados': resultados, 'form': form})

def user_conv_detail(request, pk):
    num = pk
    resultados = ResulConv.objects.all().filter(NroConv=pk)
    return render(request, 'GestionConvocatoria/user_conv_resul.html', {'resultados': resultados})

def conv_pers(request, pk):
    num = pk
    personal = ConvPers.objects.all().filter(NroConv=pk)
    #clientes = Cliente.objects.select_related('CodCli')
    #objcontrats = ObjContrat.objects.all()
    if request.method == "POST":
        form = PersConvForm(request.POST)
        if form.is_valid():
                conv = form.save(commit=False)
                conv.save()
                return redirect('indexadmin')
    else:
        form = PersConvForm()
    return render(request, 'GestionConvocatoria/conv_pers.html', {'personal': personal, 'form': form})

#def conv_new(request):
#    form = ConvForm()
#    return render(request, 'GestionConvocatoria/conv_edit.html', {'form': form})

#def conv_new(request):
#    if request.method == "POST":
#        form = ConvForm(request.POST)
#        if form.is_valid():
#            #post = form.save(commit=False)
#            conv = form.save(commit=False)
#            conv.save()
#            return redirect('conv_detail', pk=conv.pk)
#    else:
#        form = ConvForm()
#    return render(request, 'GestionConvocatoria/conv_edit.html', {'form': form})

#def conv_edit(request, pk):
#    conv = get_object_or_404(Convocatoria, pk=pk)
#    if request.method == "POST":
#        form = ConvForm(request.POST, instance=conv)
#        if form.is_valid():
#            conv = form.save(commit=False)
#            conv.save()
#            return redirect('conv_detail', pk=conv.pk)
#    else:
#        form = ConvForm(instance=conv)
#    return render(request, 'GestionConvocatoria/conv_edit.html', {'form': form})
