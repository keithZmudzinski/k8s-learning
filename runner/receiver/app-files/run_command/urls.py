from django.urls import path

from . import views

urlpatterns = [
    path('run_command', views.run_command, name='run_command'),
    path('', views.not_found, name='not_found'),
]