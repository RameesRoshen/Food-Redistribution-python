from django.shortcuts import render
from food_report.models import FoodReport
# Create your views here.

def food_report(request):
    if request.method == 'POST':
        obj = FoodReport()
        obj.item_name = request.POST.get('Name')
        obj.quantity = request.POST.get('Quantity')
        obj.org_name = request.POST.get('Name')
        obj.save()
    return render(request,'food_report/food_report.html')

def viewfood_report(request):
    obj = FoodReport.objects.all()
    context = {
        'aa': obj,
    }
    return render(request,'food_report/food_report_view.html',context)