from django.conf.urls import url
from inmates import views

urlpatterns = [

    url('inmates', views.inmates),
    url('vvvinmate', views.viewinmates)
]