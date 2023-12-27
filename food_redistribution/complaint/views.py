from django.shortcuts import render
from complaint.models import Complaint
import datetime
# Create your views here.

def complaint(request):
    if request.method == 'POST':
        obj = Complaint()
        obj.complaint = request.POST.get('Complaint')
        obj.reply='pending'
        obj.user_id=1
        obj.date=datetime.datetime.today()
        obj.time=datetime.datetime.now()
        obj.save()
    return render(request,'complaint/complaint.html')

def viewcomplaint(request):
    obj =Complaint.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'complaint/complaint_view.html',context)

def post_reply(request,idd):
    if request.method=="POST":
        obj=Complaint.objects.get(complaint_id=idd)
        obj.reply=request.POST.get('Reply')
        obj.save()
        return viewcomplaint(request)
    return render(request, 'complaint/post_reply.html')

def virply(request):
    obj =Complaint.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'complaint/view_reply.html',context)