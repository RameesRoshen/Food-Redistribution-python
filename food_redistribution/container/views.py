from django.shortcuts import render
from container.models import Container
# Create your views here.

def container(request):
    if request.method == 'POST':
        obj = Container()
        obj.container_name = request.POST.get('Name')
        obj.location = request.POST.get('Location')
        obj.phone = request.POST.get('Phone')
        obj.save()
    return render(request,'container/container.html')

def viewcontainer(request):
    obj = Container.objects.all()
    context = {
        'aa': obj,
    }

    return render(request,'container/container_view.html',context)