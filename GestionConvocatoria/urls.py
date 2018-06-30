from django.conf.urls import include, url
from . import views

urlpatterns = [
    url(r'^$', views.user_conv_list, name='index'),
    url(r'^administrador', views.conv_list, name='indexadmin'),
    url(r'^conv/(?P<pk>[0-9]+)/$', views.conv_detail, name='conv_detail'),
    url(r'^conv_detail/(?P<pk>[0-9]+)/$', views.user_conv_detail, name='user_conv_detail'),
    url(r'^conv_pers/(?P<pk>[0-9]+)/$', views.conv_pers, name='conv_pers'),
    #url(r'^conv/new/$', views.conv_new, name='conv_new'),
    #url(r'^conv/(?P<pk>[0-9]+)/edit/$', views.conv_edit, name='conv_edit'),
]
