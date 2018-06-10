from django.conf.urls import include, url
from . import views

urlpatterns = [
    url(r'^$', views.conv_list, name='index'),
    url(r'^conv/(?P<pk>[0-9]+)/$', views.conv_detail, name='conv_detail'),
    #url(r'^conv/new/$', views.conv_new, name='conv_new'),
    #url(r'^conv/(?P<pk>[0-9]+)/edit/$', views.conv_edit, name='conv_edit'),
]
