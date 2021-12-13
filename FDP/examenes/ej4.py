#!/usr/bin/env python3

import os

# os.system("clear")

# Punto a


def ternaPitagora(n):
    """TODO: Docstring for ternaPitagora.

    :n: TODO
    :returns: TODO

    """
    for i in range(1, n + 1):
        for j in range(1, n + 1):
            for k in range(1, n + 1):
                if i + j + k == n:
                    print(i, j, k)


# ternaPitagora(12)
# Punto b


def ternaPitagora2(n):
    """TODO: Docstring for ternaPitagora.

    :n: TODO
    :returns: TODO

    """
    for i in range(1, n + 1):
        for j in range(1, n + 1):
            for k in range(1, n + 1):
                if i != j and j != i and i != k and i + j + k == n:
                    print(i, j, k)


ternaPitagora2(12)
