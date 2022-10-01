from django.urls import path

from . import views

urlpatterns = [
    path('ping', views.ping, name='ping'),
    path('run', views.run, name='run'),
    path('', views.index, name='index'),
]