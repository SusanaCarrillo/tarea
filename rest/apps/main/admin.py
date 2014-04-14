from django.contrib	import admin
from .models	import proveedor,producto,venta,ventadescripcion

admin.site.register(proveedor)
admin.site.register(producto)
admin.site.register(venta)
admin.site.register(ventadescripcion)

