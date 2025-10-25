from django.urls import path
from . import views
from core.views import *

urlpatterns = [
    path("", views.index, name="index"),
path("identidad/", views.identidad, name="identidad"),
    path("contactanos/", views.contactanos, name="contactanos"),
    path("carrusel/", views.carrusel_view, name="carrusel"),
    path("perfil_admi/", views.perfil_admi, name="perfil_admi"),
    path("login/", views.login, name="login"),
    path("categoria1/", views.categoria1, name="categoria1"),
    path("categoria2/", views.categoria2, name="categoria2"),
    path("categoria3/", views.categoria3, name="categoria3"),
    path("actualizarperfil/", views.actualizarperfil, name="actualizarperfil"),
    path("cambiarcontrasena/", views.cambiarcontrasena, name="cambiarcontrasena"),
    path("comentarios/", views.comentarios, name="comentarios"),
    path("configuracion/", views.configuracion, name="configuracion"),
    path('logout/', views.logout_view, name='logout'),
    path('register/', views.register_view, name='register'),
    path('about/', views.about_view, name='about'),
    path('vision/', views.vision_view, name='vision'),
    path('mission/', views.mission_view, name='mission'),

]
