import re
from traceback import print_tb
from django.shortcuts import render
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from .serializer import TareaSerializer
from ..modelos.models import Tarea
from rest_framework import status

# Create your views here.


@api_view(['GET', 'POST', 'DELETE', 'PUT'])
@permission_classes((AllowAny,))
def tareasView(request):
    if request.method == 'GET':
        i = Tarea.objects.all()
        serializer = TareaSerializer(i, many=True)

        return(Response(serializer.data, status=status.HTTP_201_CREATED))
    else:
        if request.method == 'POST':
            serializer = TareaSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return(Response(serializer.data, status=status.HTTP_201_CREATED))
            return(Response(request.data, status=status.HTTP_400_BAD_REQUEST))
        else:
            if request.method == 'DELETE':
                i = Tarea.objects.filter(id=request.data)
                i.delete()
                return(Response('', status=status.HTTP_200_OK))
            if request.method == 'PUT':
                i = Tarea.objects.filter(id=request.data)
                serializer = TareaSerializer(data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return(Response(serializer.data, status=status.HTTP_201_CREATED))
