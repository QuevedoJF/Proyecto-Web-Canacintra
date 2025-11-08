import os
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin 
from django.urls import path, include 

urlpatterns = [ 
    path('', include('core.urls')), 
    path('admin/', admin.site.urls) 
]   

# Esto solo funciona con DEBUG = True
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=os.path.join(settings.BASE_DIR, 'static'))
