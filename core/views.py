from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from django.contrib.auth import authenticate, login as auth_login, logout 
from django.contrib.auth import get_user_model
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib.auth.views import PasswordChangeView 
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib import messages
from django.views.decorators.http import require_POST
from django.urls import reverse_lazy

from django.shortcuts import render
from django.http import HttpResponse # Se mantiene para la vista 'identidad'
from django.contrib.auth import get_user_model # Se mantiene, pero la línea User = get_user_model() se elimina
# Nota: Se eliminan todas las importaciones de auth, messages, redirect, reverse_lazy,
# get_object_or_404, require_POST, LoginRequiredMixin, PasswordChangeView, user_passes_test, etc.

# --- CATEGORIAS ---
def index(request):
    return render(request, 'core/index.html')

def user(request):
    return render(request, 'core/user.html')

def actualizarperfil(request):
    return render(request, 'core/actualizarperfil.html')

def cambiarcontrasena(request):
    return render(request, 'core/cambiarcontrasena.html')

def identidad(request):
    return HttpResponse("<b> Identidad </b>")

def contactanos(request):
    return render(request, 'core/contactanos.html')

def categoria(request):
    return render(request, 'core/categoria.html')

def categoria1(request):
    return render(request, 'core/categoria1.html')

def categoria2(request):
    return render(request, 'core/categoria2.html')

def categoria3(request):
    return render(request, 'core/categoria3.html')

def comentarios(request):
    return render(request, 'core/comentarios.html')

def configuracion(request):
    return render(request, 'core/index.html')

@login_required 
def perfil_admi(request):
    return render(request, 'core/perfil_admi.html')

@login_required 
def perfil_user(request):
    return render(request, 'core/perfil_user.html')
# CATEGORIAS DE LA CARPETA CATEGORY
def ghost(request):
    return render(request, 'category/ghost.html', {})

def minecraft(request):
    return render(request, 'category/minecraft.html', {})

def planetas(request):
    return render(request, 'category/planetas.html', {})

def libros(request):
    return render(request, 'category/libros.html', {})

def flow(request):
    return render(request, 'category/flow.html', {})

def pintura(request):
    return render(request, 'category/pintura.html', {})

def paisajes(request): 
    return render(request, 'category/paisajes.html', {})

def sekiro(request):
    return render(request, 'category/sekiro.html', {}) 

def hollow_knight(request): 
    return render(request, 'category/hollow_knight.html', {})

def literatura1(request): 
    return render(request, 'category/literatura1.html', {})

def literatura2(request): 
    return render(request, 'category/literatura2.html', {})

def literatura3(request): 
    return render(request, 'category/literatura3.html', {})

def literatura4(request): 
    return render(request, 'category/literatura4.html', {})

def naturaleza1(request): 
    return render(request, 'category/naturaleza1.html', {})

def naturaleza2(request): 
    return render(request, 'category/naturaleza2.html', {})

def naturaleza3(request): 
    return render(request, 'category/naturaleza3.html', {})

#FOOTER: estas son las categoorias del footer
def about_view(request):
    return render(request, 'core/about.html')

def vision_view(request):
    return render(request, 'core/vision.html')

def mission_view(request):
    return render(request, 'core/mission.html')

# Vista simple para mostrar la plantilla de login (se mantiene por si el link existe, pero sin lógica)
def login(request): 
    return render(request, 'core/login.html')

def sign_up(request): 
    if request.method == 'POST': 
        username = request.POST['username'] 
        email = request.POST['email'] 
        password1 = request.POST['password1'] 
        password2 = request.POST['password2'] 

        if password1 != password2: 
            messages.error(request, 'Las contraseñas no coinciden.') 
            return redirect('core:sign_up') 

        if user.objects.filter(username=username).exists(): 
            messages.error(request, 'El nombre de usuario ya está en uso.') 
            return redirect('core:sign_up') 

        if user.objects.filter(email=email).exists(): 
            messages.error(request, 'El correo electrónico ya está registrado.') 
            return redirect('core:sign_up') 

        user = user.objects.create_user(username=username, email=email, password=password1) 
        user.save() 
        messages.success(request, 'Tu cuenta ha sido creada con éxito. Ahora puedes iniciar sesión.') 
        return redirect('core:login') 

    return render(request, 'core/sign_up.html') 

# CARRUSEL: esta es la vista del carrusel
def carrusel_view(request):
    imagenes = [
        {"url": "{% static 'images/paisaje_ghost.jpg' %}", "descripcion": "Paisaje 1"},
    ]
    return render(request, "core/partials/carrusel.html", {"imagenes": imagenes})