import os
import time


def empieza(matrix):
    global mario
    global peach
    os.system("clear")
    print(matrix)
    flag = False
    while flag is False:
        for indice1, i in enumerate(matrix):
            for indice2, j in enumerate(i):
                print(j, end=" ")
            print()


grid = [["-", "-", "p"], ["-", "m", "-"], ["-", "-", "-"]]
empieza(grid)
