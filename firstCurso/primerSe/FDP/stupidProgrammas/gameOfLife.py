#!/usr/bin/env python3
import os
import random
import time

columna = 20
fila = 20
grid = [[random.randint(0, 1) for i in range(fila)] for j in range(columna)]


def contarVecinos(grid, x, y):
    """Suma los vecinos que tiene

    :grid: TODO
    :i: TODO
    :j: TODO
    :returns: TODO

    """
    suma = 0
    for i in range(-1, 2):
        for j in range(-1, 2):
            nuevoValorI = (i + x + fila) % fila
            nuevoValorJ = (j + y + columna) % columna
            suma += grid[nuevoValorI][nuevoValorJ]

    suma -= grid[x][y]
    return suma


while True:

    os.system("clear")
    for i in grid:
        for j in i:
            print(j, end=" ")
        print()

    nuevoGrid = [["" for i in range(fila)] for j in range(columna)]

    for indiceI, i in enumerate(grid):
        for indiceJ, j in enumerate(i):
            estado = grid[indiceI][indiceJ]
            vecinos = contarVecinos(grid, indiceI, indiceJ)
            if vecinos == 3 and estado == 0:
                nuevoGrid[indiceI][indiceJ] = 1
            elif estado == 1 and (vecinos < 2 or vecinos > 3):
                nuevoGrid[indiceI][indiceJ] = 0
            else:
                nuevoGrid[indiceI][indiceJ] = estado

    grid = nuevoGrid

    time.sleep(1)
