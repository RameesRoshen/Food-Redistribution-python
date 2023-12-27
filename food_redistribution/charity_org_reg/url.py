from django.conf.urls import url
from charity_org_reg import views

urlpatterns = [

    url('CharityOrgReg/', views.chari),
    url('vvvCharityReg/', views.viewchari)
]