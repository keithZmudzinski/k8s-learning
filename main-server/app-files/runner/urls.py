from django.urls import path

from . import views

urlpatterns = [
    path('ping', views.ping, name='ping'),
    path('run', views.run, name='run'),
    path('', views.not_found, name='not_found'),
]