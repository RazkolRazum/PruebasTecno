from django.db import models
from django.db.models.deletion import CASCADE

# Create your models here.



class Tarea(models.Model):
    # item= models.ForeignKey(Item,on_delete=CASCADE)
    item=models.CharField(max_length=50, null=False)
    descripcion=models.TextField(max_length=250)
