#!/usr/bin/env python3
import os

# clear console :=)
os.system("clear")

# Ejercicio 1
# Encuentra  tres  valores  que  tengan  los
# tipos  int,  str  y  float.  Comprueba
# con Python que sus valores son de los tipos pedidos.


def getTypes(variable):
    """TODO: Docstring for getTypes.
    :returns: type(variabe)

    """
    return type(variable)


# print(getTypes("hola"))
# print(getTypes(20))
# print(getTypes(2.3))

# Ejercicio 2
# Escribe  un  código  que  imprima  tu  nombre  y  edad,
# así: Nombre:  Pedro Martín, edad: 25.


def imprimirNombre(nombre, edad):
    """TODO: Docstring for imprimirNombre.
    :returns: TODO

    """
    cadena = f"hola soy {nombre} y tengo {edad} años"
    return cadena


# print(imprimirNombre("sergio", 20))

# Ejercicio 3
# Calcula y muestra por pantalla el área de un cuadrado:
# a) Utilizando dos variables, una para almacenar la longitud del lado y
# otra para almacenar el área.
# b) Utilizando una única variable para almacenar la longitud del lado.


def areaCuadrado(lado):
    """TODO: Docstring for areaCuadrado.
    :returns: TODO

    """
    area = lado * lado
    return area


print(areaCuadrado(4))
