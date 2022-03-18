from rest_framework import serializers
from ..modelos.models import Tarea



class TareaSerializer(serializers.ModelSerializer):
    class Meta:
        model=Tarea
        fields='__all__'
        # fields=['nit, password']        