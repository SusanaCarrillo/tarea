from .models import producto,proveedor,venta,ventadescripcion
from rest_framework import viewsets
from .serializers import productoSerializer, proveedorSerializer, ventaSerializer, ventadescripcionSerializer


class productoViewSet(viewsets.ModelViewSet):
	queryset = producto.objects.all()
	serializer_class = productoSerializer

class proveedorViewSet(viewsets.ModelViewSet):
	queryset = proveedor.objects.all()
	serializer_class = proveedorSerializer

class ventaViewSet(viewsets.ModelViewSet):
	queryset = venta.objects.all()
	serializer_class = ventaSerializer

class ventadescripcionViewSet(viewsets.ModelViewSet):
	queryset = ventadescripcion.objects.all()
	serializer_class = ventadescripcionSerializer