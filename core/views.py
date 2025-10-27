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

# --- CONFIGURACIÓN DE MODELOS Y PERMISOS ---
User = get_user_model() 

# Función auxiliar para verificar si el usuario es staff o superusuario (ADMIN)
def is_admin(user):
    return user.is_staff or user.is_superuser
# ------------------------------------------

# --- CATEGORIAS ---
def index(request):
    return render(request, 'core/index.html')

def identidad(request):
    return HttpResponse("<b> Identidad </b>")

def contactanos(request):
    return render(request, 'core/contactanos.html')

def categoria1(request):
    return render(request, 'core/categoria1.html')

def categoria2(request):
    return render(request, 'core/categoria2.html')

def categoria3(request):
    return render(request, 'core/categoria3.html')

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

#FOOTER: estas son las categoorias del footer
def about_view(request):
    return render(request, 'core/about.html')

def vision_view(request):
    return render(request, 'core/vision.html')

def mission_view(request):
    return render(request, 'core/mission.html')

# CORRECCIÓN: Vista simple para mostrar la plantilla de login 
def login_page(request): 
    return render(request, 'core/login.html')

# CARRUSEL: esta es la vista del carrusel
def carrusel_view(request):
    imagenes = [
        {"url": "{% static 'images/paisaje_ghost.jpg' %}", "descripcion": "Paisaje 1"},
    ]
    return render(request, "core/partials/carrusel.html", {"imagenes": imagenes})

# --- VISTAS DE AUTENTICACIÓN Y REGISTRO ---

def login_view(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        
        # --- LÍNEA DE DEBUG ---
        print(f"Intento de login: User={username}, Pass={password}")
        # ---------------------
        
        user = authenticate(request, username=username, password=password)
        if user:
            # --- LÓGICA DE ÉXITO (CORREGIDA) ---
            auth_login(request, user)
            messages.success(request, f"¡Bienvenido, {username}!")
            if is_admin(user):
                return redirect('perfil_admi')
            else:
                return redirect('perfil_user')
            # --- FIN LÓGICA DE ÉXITO ---
        
        else: # <--- El 'else' ahora está correctamente alineado con el 'if user'
            # Esto se ejecuta si la autenticación falló
            print("--- ¡LOGIN FALLIDO! Mensaje de error enviado. ---")
            messages.error(request, 'Usuario o contraseña incorrectos.')
            
    # Renderiza la plantilla después de procesar el POST (o la muestra si es GET)
    return render(request, 'core/login.html')
def register_view(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        password1 = request.POST.get('password1')
        password2 = request.POST.get('password2')

        if password1 != password2:
            messages.error(request, 'Las contraseñas no coinciden.')
        elif User.objects.filter(username=username).exists():
            messages.error(request, 'El usuario ya existe.')
        else:
            user = User.objects.create_user(username=username, email=email, password=password1)
            auth_login(request, user)
            messages.success(request, '¡Registro exitoso! Bienvenido.')
            return redirect('perfil_user') 

    return render(request, 'core/login.html')

@login_required
def logout_view(request):
    logout(request)
    messages.info(request, 'Sesión cerrada exitosamente.')
    return redirect('index') 

# --- VISTAS DEL PANEL DE USUARIO Y ADMIN ---

@login_required
def perfil_user(request):
    return render(request, 'core/perfil_user.html')

@login_required
def actualizarperfil(request):
    return render(request, 'core/actualizarperfil.html')

@login_required
def configuracion(request):
    return render(request, 'core/configuracion.html')

# Vista segura para CAMBIAR CONTRASEÑA (Usada por ambos, user y admin)
class CambiarContrasenaView(LoginRequiredMixin, PasswordChangeView):
    template_name = 'core/cambiarcontrasena.html'
    
    def get_success_url(self):
        messages.success(self.request, 'Contraseña cambiada exitosamente.')
        if is_admin(self.request.user):
            return reverse_lazy('perfil_admi') 
        else:
            return reverse_lazy('perfil_user') 

# --- VISTAS EXCLUSIVAS DE ADMINISTRADOR ---

@login_required
@user_passes_test(is_admin, login_url='login_page') # PROTEGIDA
def perfil_admi(request):
    return render(request, 'core/perfil_admi.html')

@login_required
@user_passes_test(is_admin, login_url='login_page') # PROTEGIDA
def comentarios(request):
    return render(request, 'core/comentarios.html')

# CORRECCIÓN: Vista de gestión de usuarios que usa la plantilla 'user.html'
@login_required
@user_passes_test(is_admin, login_url='login_page') # PROTEGIDA
def user_list_view(request): 
    usuarios = User.objects.exclude(id=request.user.id).order_by('username') 
    context = {
        'usuarios': usuarios
    }
    return render(request, 'core/user.html', context) # Renderiza user.html
    
@login_required
@user_passes_test(is_admin, login_url='login_page') # PROTEGIDA
@require_POST
def eliminar_usuario_view(request, user_id):
    usuario_a_eliminar = get_object_or_404(User, id=user_id)
    if usuario_a_eliminar.id == request.user.id:
        messages.error(request, 'No puedes eliminar tu propia cuenta.')
    elif usuario_a_eliminar.is_superuser:
        messages.error(request, 'No puedes eliminar a un superusuario.')
    else:
        try:
            username = usuario_a_eliminar.username
            usuario_a_eliminar.delete()
            messages.success(request, f'Usuario "{username}" eliminado correctamente.')
        except Exception as e:
            messages.error(request, f'Error al eliminar al usuario: {e}')
            
    return redirect('user') # Redirige a la lista de usuarios (user.html)