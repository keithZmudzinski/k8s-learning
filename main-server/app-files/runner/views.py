from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse

def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")

def ping(request):
    return JsonResponse({'success':'true'})

def run(request):
    return JsonResponse({'success': 'false', 'message': 'Not yet implemented'})
