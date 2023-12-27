from django.conf.urls import url
from complaint import views

urlpatterns = [

    url('complaint', views.complaint),
    url('vvvcomplt', views.viewcomplaint),
    url('postrply/(?P<idd>\w+)', views.post_reply, name='kk'),
    url('viewrply/', views.virply)
]