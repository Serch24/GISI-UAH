import os
import time
from math import sqrt

os.system("clear")


def fuerza(aceleracion: float, masa: float):
    """OBJ: retorne el valor de la magnitud física
    fuerza  a  partir  de  los  valores  de  masa  y  aceleración
    recibidos  como parámetros..

        :aceleracion: float
        :masa: float
        :returns: float

    """

    return aceleracion * masa


# print(fuerza(10, 10))


def barnTom2(barn):
    """Programa dos funciones, una que permita convertir
    unidades en m² a Barns, y su inversa.

        :barn: TODO
        :returns: TODO

    """
    return barn * 10 ** -28


# print(barnTom2(15))


def m2ToBarn(m2):
    """Programa dos funciones, una que permita convertir
    unidades en m² a Barns, y su inversa.
    https://www.unitconverters.net/area/square-meter-to-barn.htm

        :m2: TODO
        :returns: TODO

    """
    return m2 * 10 ** +28


# print(m2ToBarn(100))


def tiea(tna, numeroPeriodos):
    """Escribe una función que calcule el TIEA a
    partir del TNA y el número de períodos.
    https://www.unitconverters.net/area/square-meter-to-barn.htm

        :tna: TODO
        :numeroPeriodos: TODO
        :returns: TODO

    """
    tasaDeInteresEfectivoAnual = 1 + (tna / numeroPeriodos)
    return tasaDeInteresEfectivoAnual


# print(tiea(100, 12))


def circunferencia(x: float, y: float) -> str:
    """Escribe una función que determine si un punto de coordenadas en 2D está o
    no sobre la circunferencia x 2 +y 2 =1000.

        :x: float
        :y: float
        :returns: str

    """
    valor = (x ** 2) + (y ** 2)
    return (
        "Esta sobre la circunferencia"
        if valor == 1000
        else "No está sobre la circunferencia"
    )


# print(circunferencia(22.55, 22.17))


def pinta(mililitros: float):
    """Programa una función que
    determine el número de pintas que contiene una cierta cantidad de líquido
    expresada en mililitros, sabiendo que 1 pinta (pt) = 473,176473 ml.

        :mililitros: float
        :returns: TODO

    """
    unaPinta = 473.176473
    return mililitros * unaPinta


# print(pinta(2))


def distancia3D(x1, y1, z1, x2, y2, z2):
    """Escribe una función que a partir de las coordenadas 3D de dos puntos en el
    espacio en formato (x, y, z) calcule la distancia que hay entre dichos
    puntos.

        :x: TODO
        :y: TODO
        :z: TODO
        :returns: TODO

    """
    return sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2)


# print(distancia3D(0, 0, 0, 1, 1, 0))


def notas(nota: float):
    """encuentra una fórmula
    general que convierta una nota con dos decimales a la calificación
    correspondiente en el acta e implementa una función que la utilice para
    convertir cualquier nota

        :nota: float
        :returns: TODO

    """
    return float(round(nota))


# print(notas(8.5))

print(time.strftime("%H:%M:%S"))
