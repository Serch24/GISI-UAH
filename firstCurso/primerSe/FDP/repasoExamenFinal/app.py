#!/usr/bin/env python3

def factorial(numero):
    """TODO: Docstring for factorial.
    :returns: TODO

    """
    if numero < 2:
        return 1
    else:
        n = numero * factorial(numero - 1)
        return n

# print(factorial(4))

def encuentraPosicion(lista, numero):
    """TODO: Docstring for encuentraPosicion.
    :returns: TODO

    """
    flag = False
    i = 0
    while flag == False and len(lista) > i:
        if numero == lista[i]:
            flag = True
            print(f'sí, posición {i}')
        i += 1

encuentraPosicion([2,1,4],4)
