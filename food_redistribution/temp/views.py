from django.shortcuts import render

# Create your views here.

def admin(request):
    return render(request, 'temp/admin.html')

def charity(request):
    return render(request, 'temp/Charity org.html')

def home(request):
    return render(request, 'temp/home.html')

def user(request):
    return render(request, 'temp/user.html')
