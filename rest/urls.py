from django.conf.urls import patterns, include, url
from rest_framework import routers
from apps.main import views

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

router = routers.DefaultRouter()
router.register(r'productos', views.productoViewSet)
router.register(r'proveedores', views.proveedorViewSet)
router.register(r'venta', views.ventaViewSet)
router.register(r'ventadescripcion', views.ventadescripcionViewSet)

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'rest.views.home', name='home'),
    # url(r'^rest/', include('rest.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^admin/', include(admin.site.urls)),
)
