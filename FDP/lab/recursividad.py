#!/usr/bin/env python3
import os

os.system("clear")


def factorial(num):
    """TODO: Docstring for factorial.

    :num: TODO
    :returns: TODO

    """
    val = 1
    if num < 1:
        return 1
    else:
        val = num * factorial(num - 1)
        return val


def sumaTodo(numero):
    """TODO: Docstring for sumaTodo.

    :numero: TODO
    :returns: TODO

    """
    val = 1
    if numero <= 0:
        return 0
    elif numero == 1:
        return 1
    else:
        val = numero + sumaTodo(numero - 1)
        return val


def fibo(num):
    """TODO: Docstring for fibo.

    :num: TODO
    :num2: TODO
    :returns: TODO

    """
    if num == 0 or num == 1:
        val = 1
    else:
        val = fibo(num - 2) + fibo(num - 1)
    return val


def misterio(n):
    """TODO: Docstring for misterio.

    :n: TODO
    :returns: TODO

    """
    if n == 1:
        i = int(input("escribe"))
        print(i)
    else:
        i = int(input("escribe"))
        misterio(n - 1)
        print(i)
    return


def palindromo(palabra, i, j):
    """TODO: Docstring for palindromo.

    :palabra: TODO
    :returns: TODO

    """
    if i >= j:
        return True
    else:
        if palabra[i] != palabra[j]:
            return False
        else:
            res = palindromo(palabra, i + 1, j - 1)
    return res


def sumaLista(listaa):
    """TODO: Docstring for sumaLista.

    :listaa: TODO
    :returns: TODO

    """
    suma = 1
    if len(listaa) < 0:
        return 0
    elif len(listaa) == 1:
        return listaa[0]
    else:
        suma = suma + sumaLista(listaa[: len(listaa) - 1])
        print(suma)  # Solucionar esto
    return suma


a = [1, 2, 3, 4]
sumaLista(a)
# print(palindromo("radar", 0, len("radar") - 1))
# print(factorial(5))
# print(sumaTodo(5))
# print(fibo(4))
# misterio(4)
