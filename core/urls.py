from django.urls import path
from . import views
from django.contrib.auth import views as auth_views 
from django.contrib.auth.views import LogoutView 
from django.conf import settings 
from django.conf.urls.static import static 
# Eliminamos: from .views import CambiarContrasenaView # Importa la vista de clase

urlpatterns = [
    # VISTAS PÚBLICAS Y BÁSICAS
    path("", views.index, name="index"),
    path("user/", views.user, name="user"),
    path("sign_up",views.sign_up,name="sign_up"), 
    path("login_auth/", views.login, name="login"),
    path("about/", views.about_view, name="about"),
    path("vision/", views.vision_view, name="vision"),
    path("mission/", views.mission_view, name="mission"),
    path("identidad/", views.identidad, name="identidad"),
    path("categoria/", views.categoria, name="categoria"),
    path("carrusel/", views.carrusel_view, name="carrusel"),
    path("contactanos/", views.contactanos, name="contactanos"),
    path("perfil_user/", views.perfil_user, name="perfil_user"),
    path("perfil_admi/", views.perfil_admi, name="perfil_admi"),
    path("configuracion/", views.configuracion, name="configuracion"),
    path("actualizarperfil/", views.actualizarperfil, name="actualizarperfil"),
    path("cambiarcontrasena/", views.cambiarcontrasena, name="cambiarcontrasena"),


    # CATEGORÍAS GENÉRICAS
    path("categoria1/", views.categoria1, name="categoria1"),
    path("categoria2/", views.categoria2, name="categoria2"),
    path("categoria3/", views.categoria3, name="categoria3"),

    # CATEGORÍAS DE CONTENIDO (Páginas Creadas)
    path("flow/", views.flow, name="flow"),
    path("ghost/", views.ghost, name="ghost"),
    path("libros/", views.libros, name="libros"),
    path("sekiro/", views.sekiro, name="sekiro"),
    path("pintura/", views.pintura, name="pintura"),
    path("planetas/", views.planetas, name="planetas"),
    path("paisajes/", views.paisajes, name="paisajes"),
    path("minecraft/", views.minecraft, name="minecraft"),
    path("hollow_knight/", views.hollow_knight, name="hollow_knight"),
    
    # LITERATURA (Múltiples Vistas)
    path("literatura1/", views.literatura1, name="literatura1"),
    path("literatura2/", views.literatura2, name="literatura2"),
    path("literatura3/", views.literatura3, name="literatura3"),
    path("literatura4/", views.literatura4, name="literatura4"),
    
    # perfiles, configuración y administración.
    path('login/', auth_views.LoginView.as_view(template_name='core/login.html'), name='login'), 
    path('logout/', LogoutView.as_view(next_page='core:login'), name='logout'), 

]  + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)