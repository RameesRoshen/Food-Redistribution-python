from django.shortcuts import render
from user_reg.models import UserReg
# Create your views here.

def usr_reg(request):
    if request.method == 'POST':
        obj = UserReg()
        obj.name = request.POST.get('Name')
        obj.address = request.POST.get('Address')
        obj.gender=request.POST.get('gen')
        obj.phone = request.POST.get('Phone')
        obj.save()
    return render(request,'user_reg/user_reg.html')

def viewusr_reg(request):
    obj = UserReg.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'user_reg/user_view.html',context)