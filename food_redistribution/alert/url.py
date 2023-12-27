from django.conf.urls import url
from alert import views

urlpatterns=[

     url('palert/',views.postalert),
     url('valert/',views.viewalert)
]