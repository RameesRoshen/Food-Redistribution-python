from django.conf.urls import url
from temp import views
urlpatterns=[
    url('admin/',views.admin),
    url('Charity org/',views.charity),
    url('home/',views.home),
    url('user/',views.user),

]