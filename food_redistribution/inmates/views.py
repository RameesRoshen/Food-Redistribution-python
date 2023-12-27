from django.shortcuts import render
from inmates.models import Inmates
# Create your views here.

def inmates(request):
    if request.method == 'POST':
        obj = Inmates()
        obj.name = request.POST.get('Name')
        obj.address = request.POST.get('Address')
        obj.save()
    return render(request,'inmates/inmates.html')

def viewinmates(request):
    obj = Inmates.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'inmates/inmates_view.html',context)