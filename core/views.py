from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    return render(request, 'core/index.html')

def identidad(): 
    return HttpResponse("<b> Identidad </b>")

def contactanos(request):
    return render(request, 'core/contactanos.html')

def carrusel_view(request):
    imagenes = [
        {"url": "https://picsum.photos/id/1018/1600/900", "descripcion": "Paisaje 1"},
        {"url": "https://picsum.photos/id/1015/1600/900", "descripcion": "Paisaje 2"},
        {"url": "https://picsum.photos/id/1025/1600/900", "descripcion": "Paisaje 3"},
        {"url": "https://picsum.photos/id/1039/1600/900", "descripcion": "Paisaje 4"},
    ]
    return render(request, "main/carrusel.html", {"imagenes": imagenes})