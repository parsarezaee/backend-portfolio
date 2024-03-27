from django.shortcuts import render
from django.http import JsonResponse


def ping(request):
    data = {'ping': 'pong!'}
    return JsonResponse(data)




def home(request):
    return render(request, 'index.html')