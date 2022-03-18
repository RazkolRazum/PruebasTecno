from operator import concat


import re
def main():
    letra='TRWAGMYFPDXBNJZSQVHLCKE'
    DNI=input('Ingrese el DNI a evaluar: ')
    ultimaLetra=DNI[len(DNI)-1].lower()
    finded=re.findall('[abcdefghijklmnñopqrtsuvwxyz]',ultimaLetra)

    if len(finded)>0:

        numeros=int(DNI[0:len(DNI)-1])
        resto=numeros%23
        print(resto)
        _letra=letra[resto].lower()
        if(_letra==finded[0]):
            print('valido')
        else:
            print('invalido')    
    else:
        print('invalido')    



main()    