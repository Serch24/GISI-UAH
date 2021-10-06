#!/usr/bin/env python3
import os
import time

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


def imprimirNombre(nombre: str, edad: int) -> str:
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


# print(areaCuadrado(4))

# Ejercicio 4
# Escribe un programa en Python que calcule el impuesto que debe pagar un
# contribuyente  a  partir  de  sus  ingresos  anuales
# y el  número  de  hijos.
# El impuesto a pagar es un tercio del ingreso imponible,
# siendo este último igual
# a los ingresos totales menos una deducción personal de 600€ y otra deducción
# de 60€ por hijo.


def impuesto(ingresoAnual, numHijos):
    """TODO: Docstring for impuesto.
    :returns: TODO

    """
    deducionPersonal = 600
    impuestoHijo = numHijos * 60
    impuesto = ingresoAnual - deducionPersonal - impuestoHijo

    return impuesto


# print(impuesto(1000, 2))

# Ejercicio 5
# Escribe  un  programa  que  dada  una  hora
# (expresada  en  hora,  minutos  y
# segundos) muestre por pantalla el total de segundos transcurridos desde la
# última medianoche y los que quedan para la siguiente medianoche.


def hora():
    """TODO: Docstring for hora.
    :returns: TODO

    """
    hora = time.time()
    return hora


# print(hora())

# Ejercicio6
# Una  industria  mantiene  una  flota  de  camiones
# para  repartir  productos.  En
# cada viaje, el conductor anota la distancia recorrida en kilómetros
# , los litros
# de  gasoil  utilizados,  el  coste  del  litro  de  gasoil
# y  los  demás  costes  de
# mantenimiento del camión (agrupados). Como parte del proceso de
# contabilidad, el controlador necesita calcular, para cada camión y para cada
# viaje, los kilómetros recorridos por litro,
# el coste total del viaje y el coste total
# por kilómetro (incluidos los gastos de mantenimiento). Diseña un programa
# sencillo que lleve a cabo estos cálculos para un camión en un viaje.


def repartirProductos(distanciaKm, litrosGasoil, cadaLitroGasoil):
    """TODO: Docstring for repartirProductos.

    :returns: TODO

    """


# Ejercicio 7
# Python  permite  convertir  elementos  de  un  tipo  en  otro.
# Lleva  a  cabo  las
# siguientes conversiones y comenta los resultados:


def casting():
    """TODO: Docstring for casting.
    :returns: TODO

    """
    texto_numerico = "45"
    int(texto_numerico)  # se convierte el 45 a numero
    int("Hola")  # da error
    int(3.99999)  # se convierte a 3
    int(-3.99999)  # se convierte a -3
    float(34)  # se convierte a 34.0
    int("diez")  # da error


# print(casting())


# Ejercicio 8

# Escribe un programa que, a partir de los lados de un rectángulo, calcule su
# área y perímetro y los muestre por pantalla.


def areaPerimetroRectangulo(base, altura):
    area = base * altura
    perimeto = 2 * base + 2 * altura

    return f"El area es {area} y el perimeto es {perimeto}"


# print(areaPerimetroRectangulo(15, 7))


# Ejercicio 9

# Por  consideraciones  históricas,  un  programador  suele
# interpretar  que  los
# identificadores i, j, k, l, m, n corresponden a datos enteros
# , mientras que a,
# b,  c,  x,  y,  z  son  identificadores  que  suelen
# asociarse  con  valores  reales.
# Escribe  un  programa  que,  a  partir  de
# 3  números  reales  que  inicializarás,
# calcule su media, suma total y producto total y muestre todos estos datos por
# pantalla.


def numerosReales(a, b, c):
    """TODO: Docstring for numerosReales.

    :returns: TODO

    """
    numeroTotal = 3
    sumaTotal = a + b + c
    media = sumaTotal / numeroTotal
    productoTotal = a * b * c

    return f"La media es {media}, la suma total es \
    {sumaTotal} y el producto total es {productoTotal}"


# print(numerosReales(2, 3, 4))


# Ejercicio 10
# La  temperatura  expresada  en  grados  centígrados  TC,
# se  puede  convertir  a grados Fahrenheit (TF) mediante la siguiente fórmula
# TF = 9.0*TC/5.0 + 32.0
# Escribe un programa que utilizando un cierto valor de temperatura en grados
# Fahrenheit,  muestre  en  pantalla  la  temperatura  equivalente  en  grados
# Centígrados.


def temperatura(gradosFahrenheit):
    """TODO: Docstring for temperatura.
    :returns: TODO

    """

    tc = (gradosFahrenheit - 32) * 5 / 9
    return tc


# print(temperatura(144))


# Ejercicio 11

# Transcribe el siguiente programa, ejecútalo y comenta los resultados:


def checkValues():
    """TODO: Docstring for checkValues.
    :returns: TODO

    """
    a = 3 / 2
    b = 3.0 / 2
    #  Divide los dos valores y hace un floor del numero, por eso da 1
    c = 3 // 2
    print("a= ", a, "b= ", b, "c= ", c)


# checkValues()


# Ejercicio 12
# El salario base de un vendedor es de 2.000 euros mensuales. A este salario
# se le suma un 3% de comisión sobre el total de las ventas que ha realizado,
# pero  al  total  obtenido  hay  que  descontarle  un  32%  del  IRPF.
# Escribe  un
# programa que, a partir del importe de las ventas que ha realizado el vendedor
# durante el último mes y escriba el salario neto que cobrará ese mes.


def irpf(importeVentas):
    """TODO: Docstring for irpf.
    :returns: TODO

    """
    salarioBase = 2000
    return salarioBase + importeVentas * 0.32


# print(irpf(400))


# Ejercicio 13

# Se  desea  conocer  el  importe  en  Libras  Esterlinas  (GBP)
# al  cambio  de  una
# cantidad  en  Euros  (EUR).  Escribe  un  programa  que,
# a  partir  de  una  cierta
# cantidad  en  euros  y  del  tipo  de  cambio  del  día,
# muestre  el  equivalente  en
# libras teniendo en cuenta que la casa de cambio retiene una comisión del 2%
# sobre el total de la operación.


def casaDeCambio(euros):
    """TODO: Docstring for casaDeCambio.
    :returns: TODO

    """
    libra = 0.86
    PorcentajeComision = 0.02

    return float(euros) * libra / PorcentajeComision / 100


# print(casaDeCambio(20))
