from django.shortcuts import render,  redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib import messages

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
    return render(request, "core/partials/carrusel.html", {"imagenes": imagenes})



def perfil_admi(request):
    return render(request, 'core/perfil_admi.html')

def login(request):
    return render(request, 'core/login.html')

def categoria1(request):
    return render(request, 'core/categoria1.html')

def categoria2(request):
    return render(request, 'core/categoria2.html')

def categoria3(request):
    return render(request, 'core/categoria3.html')

def actualizarperfil(request):
    return render(request, 'core/actualizarperfil.html')

def comentarios(request):
    return render(request, 'core/comentarios.html')

def cambiarcontrasena(request):
    return render(request, 'core/cambiarcontrasena.html')

def configuracion(request):
    return render(request, 'core/configuracion.html')

def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user:
            login(request, user)
            return redirect('index')
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'login.html')

def register_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        password1 = request.POST['password1']
        password2 = request.POST['password2']

        if password1 != password2:
            messages.error(request, 'Las contraseñas no coinciden')
        elif User.objects.filter(username=username).exists():
            messages.error(request, 'El usuario ya existe')
        else:
            user = User.objects.create_user(username=username, email=email, password=password1)
            login(request, user)
            return redirect('index')

    return render(request, 'login.html')

def about_view(request):
    return render(request, 'core/about.html') 

def vision_view(request):
    return render(request, 'core/vision.html')

def mission_view(request):
    return render(request, 'core/mission.html')