from django.conf.urls import url
from food_report import views

urlpatterns = [

    url('food_report', views.food_report),
    url('vvvfood_rept', views.viewfood_report)
]