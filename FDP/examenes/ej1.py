#!/usr/bin/env python3
# import os
from random import randint

# os.system("clear")

# Punto a


def triangulos(ang1: int, ang2: int, ang3: int) -> str:
    """OBJ: devolver una cadena con el tipo de triangulo según sus lados.

    :ang1: int
    :ang2: int
    :ang3: int
    :returns: str

    """
    triangulo = ""
    sumaAngulos = ang1 + ang2 + ang3
    if sumaAngulos == 90:
        triangulo = "Triangulo Rectangulo"
    elif sumaAngulos < 90:
        triangulo = "Triangulo Acutángulo"
    elif sumaAngulos > 90:
        triangulo = "Triangulo Obtusángulo"

    return triangulo


# Punto b


def terna() -> str:
    """OBJ: Generar ternas de números entre 0 y 180
    :returns: str

    """
    angulo1 = randint(0, 180)
    angulo2 = randint(0, 180)
    angulo3 = randint(0, 180)

    triangulo = triangulos(angulo1, angulo2, angulo3)

    return triangulo


print(terna())
