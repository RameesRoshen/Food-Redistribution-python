from django.conf.urls import url
from user_reg import views

urlpatterns=[
    url('user/',views.usr_reg),
    url('view/',views.viewusr_reg)
]