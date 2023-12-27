from django.shortcuts import render
from alert.models import Alert
# Create your views here.

def postalert(request):
    if request.method=='POST':
        obj=Alert()
        obj.alert=request.POST.get('Alert')
        obj.save()
    return render(request,'alert/post_alert.html')

def viewalert(request):
    obj=Alert.objects.all()
    context={
        'aa':obj,
    }
    return render(request,'alert/view_alert.html',context)

