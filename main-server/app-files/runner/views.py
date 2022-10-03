from django.http import JsonResponse

import requests

def not_found(request):
    return JsonResponse({'success': 'false', 'error': 'No matching endpoint found.'})

def ping(request):
    return JsonResponse({'success':'true'})

def run(request):
    default_os = 'ubuntu'
    result = requests.post(f'runner-{default_os}.development', json = {'command': 'ls'})
    return JsonResponse({'success': 'true', 'std_out': result})
