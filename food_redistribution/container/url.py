from django.conf.urls import url
from container import views

urlpatterns = [

    url('container', views.container),
    url('vvvcontain', views.viewcontainer)
]