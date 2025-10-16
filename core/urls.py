from django.urls import path
from . import views
from core.views import *

urlpatterns = [
    path("", views.index, name="index"),
path("identidad/", views.identidad, name="identidad"),
    path("contactanos/", views.contactanos, name="contactanos"),
    path("carrusel/  ", views.carrusel_view, name="carrusel"),
    path("perfil/", views.perfil, name="perfil"),
]
