from .models import producto,proveedor,venta,ventadescripcion
from rest_framework import serializers

class productoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = producto

class proveedorSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = proveedor

class ventaSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = venta

class ventadescripcionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = ventadescripcion