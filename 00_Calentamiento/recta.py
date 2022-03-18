def coordenada(x):
    try:
        dato= float(x)
        
        return dato  # Esta retornando un NoneType no se porque no debería 

    except ValueError:
        print('El valor ingresado no es un numero')
        coordenada(input('Ingrese un numero valido: '))




def main():

    x1=coordenada(input('Ingrese el valor de x para la primera coordenada: '))
    y1=coordenada(input('Ingrese el valor de y para la primera coordenada: '))
    x2=coordenada(input('Ingrese el valor de x para la segunda coordenada: '))
    y2=coordenada(input('Ingrese el valor de y para la segunda coordenada: '))

    m=(y2-y1)/(x2-x1)
    b=(y1-(m*x1))

    print('La pendiente para los puntos ingresados es la siguiente: y={}x+{}'.format(m,b))


main()
