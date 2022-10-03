from django.http import JsonResponse

def run_command(request):
    return JsonResponse({'success': 'true', 'message': 'You\'ve hit the run_command endoint. Congrats.'})

def not_found(request):
    return JsonResponse({'success': 'false', 'error': 'No matching endpoint found.'})