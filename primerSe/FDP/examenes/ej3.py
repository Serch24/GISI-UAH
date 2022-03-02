#!/usr/bin/env python3

import os

# os.system("clear")

# Punto a


def secuencia() -> float:
    """OBJ: secuencia de números enteros y sacar media cuando
    se introduce un número menor que el anterior.
    :returns: float

    """
    flagNumber = False
    flag = False
    suma = 0
    cantidadNumeros = 0
    oldNumero = 0
    numero = 0

    while flag is False:
        # check if it is a number in input
        while flagNumber is False:
            try:
                tmp = input("Introduce un número: ")
                numero = int(tmp)
            except Exception:
                print("Deben ser sólo números")
            else:
                # it is a number and we can go on
                flagNumber = True
        flagNumber = False  # reset
        if (oldNumero - 1) == numero and cantidadNumeros < 2:
            print("Secuencia no válida")
            flag = True
        elif (oldNumero - 1) == numero:
            flag = True
            print(
                f"media es {suma / cantidadNumeros} y esta formada por {cantidadNumeros} números"
            )
        else:
            suma += numero
            cantidadNumeros += 1
            oldNumero = numero


# Punto b
# secuencia()


def secuenciaDistancia() -> float:
    """OBJ: secuencia de números enteros y sacar media cuando
    se introduce un número menor que el anterior.
    :returns: float

    """
    flagNumber = False
    flag = False
    suma = 0
    cantidadNumeros = 0
    oldNumero = 0
    numero = 0

    while flag is False:
        # check if it is a number in input
        while flagNumber is False:
            try:
                tmp = input("Introduce un número: ")
                numero = int(tmp)
            except Exception:
                print("Deben ser sólo números")
            else:
                # it is a number and we can go on
                flagNumber = True
        flagNumber = False  # reset
        if (oldNumero - 1) == numero and cantidadNumeros < 2:
            print("Secuencia no válida")
            flag = True
        elif (oldNumero - 1) == numero:
            flag = True
            print(
                f"La máxima distania es {numero - oldNumero}, entre {numero} y {oldNumero}"
            )
        else:
            suma += numero
            cantidadNumeros += 1
            oldNumero = numero


# secuenciaDistancia()
