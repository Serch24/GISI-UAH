#!/usr/bin/env python3

import os
import math

os.system("clear")

# punto a


def print_cross(n: int):
    """Prints a "n times n" cross with asteriks

    :n: int
    :returns: void

    """
    centro = math.floor(n / 2)
    for row in range(n):
        for column in range(n):
            if row == centro or column == centro:
                print(" + ", end="")
            else:
                print("   ", end="")
        print("")


# print_cross(5)


# Punto b


def print_blade(n: int):
    """Prints a "n times n" blade with asteriks

    :n: int
    :returns: void

    """
    for row in range(n):
        for column in range(n):
            if (row == column) or (row + column + 1 == n):
                print(" + ", end="")
            else:
                print("   ", end="")
        print("")


# print_blade(7)
# print_cross(7)
