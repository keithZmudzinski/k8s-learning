from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse

import requests

def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")

def ping(request):
    return JsonResponse({'success':'true'})

def run(request):
    default_os = 'ubuntu'
    result = requests.post(f'runner-${default_os}-service.development', json = {'command': 'ls'})
    return JsonResponse({'success': 'true', 'std_out': result})
