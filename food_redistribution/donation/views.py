from django.shortcuts import render
from donation.models import Donation
# Create your views here.

def donation(request):
    if request.method == 'POST':
        obj = Donation()
        obj.item = request.POST.get('Item')
        obj.org_name=request.POST.get('Name')
        obj.quantity=request.POST.get('Quantity')
        obj.location = request.POST.get('Location')
        obj.phone = request.POST.get('Phone')
        obj.save()
    return render(request,'donation/donation.html')

def viewdonation(request):
    obj = Donation.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'donation/donation_view.html',context)