from django.shortcuts import render
from charity_org_reg.models import CharityOrgReg
# Create your views here.

def chari(request):
    if request.method == 'POST':
        obj = CharityOrgReg()
        obj.name = request.POST.get('Name')
        obj.address=request.POST.get('Address')
        obj.location = request.POST.get('Location')
        obj.phone = request.POST.get('Phone')
        obj.save()
    return render(request,'charity_org_reg/charity_org_reg.html')

def viewchari(request):
    obj = CharityOrgReg.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'charity_org_reg/charity_org_reg_view.html', context)
