from django.shortcuts import render
from bin_reg.models import BinReg
# Create your views here.

def binreg(request):
    if request.method == 'POST':
        obj=BinReg()
        obj.name=request.POST.get('Name')
        obj.location=request.POST.get('Location')
        obj.phone=request.POST.get('Phone')
        obj.save()

    return render(request,'bin_reg/register_bin.html')

def viewbinreg(request):
    obj = BinReg.objects.all()
    context = {
        'aa': obj,
    }
    return render(request, 'bin_reg/view_reg_bin.html', context)