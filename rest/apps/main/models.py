from django.db import models

class proveedor(models.Model):
	nombre		= models.CharField(max_length=200)
	def __unicode__(self):
		return self.nombre

class producto(models.Model):

	nombre		= models.CharField(max_length=100)
	precio      = models.DecimalField(max_digits=6, decimal_places=2)
	proveedores = models.ForeignKey(proveedor, blank=True, null=True)

	def __unicode__(self):
		return self.nombre

class venta(models.Model):
	cliente		= models.CharField(max_length=100)
	fecha 		= models.DateTimeField(auto_now_add=True) 
	def __unicode__(self):
		return self.cliente
	
class ventadescripcion(models.Model):
	venta	= models.ForeignKey(venta, blank=True, null=True)
	producto 	= models.ForeignKey(producto, blank=True, null=True)
	cantidad 	= models.IntegerField(max_length=400)
	total		= models.DecimalField(max_digits=9, decimal_places=2)

	
	
