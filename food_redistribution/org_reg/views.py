from django.shortcuts import render
from org_reg.models import OrganizationReg
# Create your views here.

def org_reg(request):
    if request.method == 'POST':
        obj = OrganizationReg()
        obj.name = request.POST.get('Name')
        obj.location = request.POST.get('Location')
        obj.phone = request.POST.get('Phone')
        obj.save()
    return render(request,'org_reg/org_reg.html')

def vieworg_reg(request):
    obj = OrganizationReg.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'org_reg/org_reg_view.html',context)