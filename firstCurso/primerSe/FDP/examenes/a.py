#!/usr/bin/env python3
import os
import math


os.system("clear")


def matrix(valor):
    """matrix todo

    :valor: TODO
    :returns: TODO

    """
    for i in range(valor):
        for j in range(valor):
            num = 0
            if i + j + 1 == valor:
                num = valor
            else:
                num = 0
            print(num, end=" ")
        print()


def matrix2(valor):
    """matrix todo

    d
        :valor: TODO
        :returns: TODO

    """
    for i in range(valor):
        for j in range(valor):
            num = 0
            if i == j:
                num = valor
            else:
                num = 0
            print(num, end=" ")
        print()


def multiplos(numero):
    """TODO: Docstring for multiplos.

    :numero: TODO
    :returns: TODO

    """
    for i in range(1, numero):
        if numero % i == 0:
            print(numero * i)


# multiplos(3)
# matrix2(5)


def factorial(numero):
    """TODO: Docstring for factorial.

    :numero: TODO
    :returns: TODO

    """
    result = 1
    for i in range(1, numero + 1):
        result = result * i

    return result


# print(factorial(3))
