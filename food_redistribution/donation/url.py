from django.conf.urls import url
from donation import views

urlpatterns = [

    url('donation', views.donation),
    url('vvvdonatn', views.viewdonation)
]