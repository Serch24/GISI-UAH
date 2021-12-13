#!/usr/bin/env python3
import os
from datetime import datetime
import time
import math

os.system("clear")


def vendedor():
    """OBJ: Escribe un código que pide al vendedor el importe de una compra
    Si la compra es superior a 100EUR se aplica un descuento del 5%
    si se paga al contado, pero si el
    pago es con tarjeta sólo se aplica el 2%..

    """
    try:
        importe = float(input("Escribe el importe\n"))
        metodoPago = int(input("1. pago al contado, 2.Pago con tarjeta\n"))
        descuento = 0
        if importe > 100 and metodoPago == 1:
            descuento = 0.05 * importe
        else:
            descuento = 0.02 * importe
    except Exception:
        return "error, solo numeros son validos"

    return importe - descuento


# print(vendedor())


def converirFormato(hora: str):
    """

    :hora: str
    :returns: TODO

    """
    try:
        hora = time.strptime(hora, "%H:%M")
        transformarFecha = time.strftime("%I:%M %P", hora)
    except Exception:
        return "fecha introducida erronea"
    return transformarFecha


# print(converirFormato(input("escribe una fecha ")))


def validar_enterno():
    """Programa una función “validar_entero” que se asegure
    de  que  una  entrada  del  usuario  es  un  entero.
    Ten  en  cuenta  que  dicha  entrada
    puede ser cualquier cosa, por ejemplo, un valor real,
    un booleano o incluso un texto
    como  “Hola”.  Nuestra  función  recibirá  un  texto  y
    retornará  verdadero  si  es  un
    entero (dando por válida la entrada) o falso (rechazando la entrada).
        :returns: TODO

    """
    try:
        entrada = input("Escribe algo: ")
        return True if type(int(entrada)) == int else False
    except Exception:
        return False


# print(validar_enterno())


def calificacionUniversidad():
    """Programa una función que reciba una calificación numérica
    y retorne la letra con la nueva calificación, luego pruébala
    con valores introducidos por el usuario
        :returns: TODO

    """
    try:
        nota = float(input("Escribe la nota: "))
        if nota < 0 or nota > 10:
            raise Exception  # throw exception

        if nota >= 8.5:
            return "A"
        elif nota >= 6.5:
            return "B"
        elif nota >= 5:
            return "C"
        elif nota >= 3.5:
            return "D"
        else:
            return "F"
    except Exception:
        return "Error al ingresar la nota o fuera de rango"


# print(calificacionUniversidad())


def ordenCreciente():
    """Escribe  un  algoritmo  que  tras  leer  tres  enteros
    los  escriba  en  pantalla  en  orden creciente.
    Como siempre, valida las entradas.
        :returns: TODO

    """
    numero1 = 3
    numero2 = 2
    numero3 = 1

    return (
        numero1
        if numero2 < numero1 and numero1 > numero3
        else numero2
        if numero2 > numero1 and numero2 > numero3
        else numero3
    )


# print(ordenCreciente())


def ecuacionSegundoGrado(a, b, c):
    """Obtén las raíces de una ecuación de segundo grado ax^2 + bx + c = 0
    a partir de sus coeficientes a, b y c. Recuerda que si
    el discriminante es cero la raíz es única (-b/2xa)
    y  que  si  el  discriminante  es  negativo  las
    raíces  son  imaginarias,  en  cuyo
    caso deberá indicarse con un mensaje “raíces imaginarias”.

        :a: TODO
        :b: TODO
        :c: TODO
        :returns: TODO
    """
    discriminante = b ** 2 - (4 * a * c)
    if discriminante < 0:
        return "raices imaginarias"
    elif discriminante == 0:
        unicaSolucion = (-b + math.sqrt(b ** 2 - (4 * a * c))) / (2 * a)
        return unicaSolucion
    else:
        solucionNegativo = (-b - math.sqrt(b ** 2 - (4 * a * c))) / (2 * a)
        solucionPositivo = (-b + math.sqrt(b ** 2 - (4 * a * c))) / (2 * a)
        return f"raices ({solucionPositivo}, {solucionNegativo})\ndiscriminante: {discriminante}"


print(ecuacionSegundoGrado(1, -1, 6))


def menu():
    """Escribe  un  programa  que  muestre  un  menú  en  pantalla
    que  permita  calcular  el seno, coseno, tangente, cotangente,
    secante y cosecante de un ángulo. El menú
    se mostrará hasta que el usuario decida salir.

        :returns: TODO

    """
    while True:
        opcion = ""
        print("1. Seno")
        print("2. Coseno")
        print("3. Tangente")
        print("4. Cotangente")
        print("5. Secante")
        print("6. Cosecante")
        print("0. Salir\n")
        try:
            opcion = int(input("Elija una opción: "))
            if 0 == opcion:
                print("Gracias y adios")
                break
            anguloEnRadianes = float(input("Escriba el angulo: "))
            anguloEnGrado = math.radians(anguloEnRadianes)
            os.system("clear")
        except Exception:
            print("error ª")
            break

        if 1 == opcion:
            print(math.sin(anguloEnGrado))
        elif 2 == opcion:
            print(math.cos(anguloEnGrado))
        elif 3 == opcion:
            print(math.tan(anguloEnGrado))
        elif 4 == opcion:
            print(math.atan(anguloEnGrado))
        elif 5 == opcion:
            print(math.asin(anguloEnGrado))
        elif 6 == opcion:
            print(math.acos(anguloEnGrado))

        print("\n")


# menu()
