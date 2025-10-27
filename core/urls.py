from django.urls import path
from . import views
from .views import CambiarContrasenaView # Importa la vista de clase

urlpatterns = [
    # VISTAS PÚBLICAS Y BÁSICAS
    path("", views.index, name="index"),
    path("identidad/", views.identidad, name="identidad"),
    path("contactanos/", views.contactanos, name="contactanos"),
    path("carrusel/", views.carrusel_view, name="carrusel"),
    path("categoria1/", views.categoria1, name="categoria1"),
    path("categoria2/", views.categoria2, name="categoria2"),
    path("categoria3/", views.categoria3, name="categoria3"),
    path("about/", views.about_view, name="about"),
    path("vision/", views.vision_view, name="vision"),
    path("mission/", views.mission_view, name="mission"),
    path("ghost/", views.ghost, name="ghost"),
    path("minecraft/", views.minecraft, name="minecraft"),
    path("planetas/", views.planetas, name="planetas"),
    path("libros/", views.libros, name="libros"),
    path("flow/", views.flow, name="flow"),
    path("pintura/", views.pintura, name="pintura"),
    path("paisajes/", views.paisajes, name="paisajes"),

    # VISTAS DE AUTENTICACIÓN
    # 1. Página del formulario de login (la plantilla)
    path("login/", views.login_page, name="login_page"), 
    # 2. Lógica de autenticación (el POST del formulario). El nombre 'login' se usa para la lógica.
    path("login_auth/", views.login_view, name="login"), 
    path("register/", views.register_view, name="register"),
    path("logout/", views.logout_view, name="logout"),
    
    # VISTAS DE PERFIL Y CONFIGURACIÓN (USUARIO GENERAL)
    path("perfil_user/", views.perfil_user, name="perfil_user"),
    path("actualizarperfil/", views.actualizarperfil, name="actualizarperfil"),
    path("configuracion/", views.configuracion, name="configuracion"),
    
    # CAMBIO DE CONTRASEÑA (USA CLASE)
    path("cambiarcontrasena/", CambiarContrasenaView.as_view(), name="cambiarcontrasena"),

    # VISTAS DE ADMINISTRADOR
    path("perfil_admi/", views.perfil_admi, name="perfil_admi"),
    path("comentarios/", views.comentarios, name="comentarios"),
    
    # GESTIÓN DE USUARIOS
    path("user/", views.user_list_view, name="user"), 
    path("eliminar_usuario/<int:user_id>/", views.eliminar_usuario_view, name="eliminar_usuario"),
]