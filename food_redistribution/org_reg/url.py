from django.conf.urls import url
from org_reg import views

urlpatterns = [

    url('org_reg', views.org_reg),
    url('vvvorg_rg', views.vieworg_reg)
]