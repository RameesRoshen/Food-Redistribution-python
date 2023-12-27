from django.conf.urls import url
from bin_reg import views

urlpatterns = [

    url('binreg/', views.binreg),
    url('vvvbin/', views.viewbinreg)
]