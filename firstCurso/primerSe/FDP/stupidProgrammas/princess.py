#!/usr/bin/env python3

import os
import time

grid = [["-" for i in range(10)] for j in range(10)]
grid[9][9] = "m"  # Mario
grid[0][0] = "p"  # princess
mario = [9, 9]
princesa = [0, 0]
obstaculo = [3, 4]


while True:

    grid[mario[0]][mario[1]] = "-"  # Resetea la última posición con -
    if mario[0] == princesa[0] and mario[1] > princesa[1]:
        # print("izquiera")
        mario[1] -= 1  # izquierda
    elif mario[0] == princesa[0] and mario[1] < princesa[1]:
        # print("derecha")
        mario[1] += 1  # Derecha
    elif mario[0] > princesa[0]:
        # print("sube")
        mario[0] -= 1  # subir
    elif mario[0] < princesa[0]:
        # print("baja")
        mario[0] += 1  # bajar

    if mario[0] != princesa[0] or mario[1] != princesa[1]:
        grid[mario[0]][mario[1]] = "m"  # Actualiza la posición de m
    else:
        grid[mario[0]][mario[1]] = "mp"  # Actualiza la posición de m
    time.sleep(1)

    os.system("clear")
    for i in grid:
        for j in i:
            print(j, end=" ")
        print()

    # print(mario, princesa)
    print("\n")
    if grid[mario[0]][mario[1]] == "mp":
        break
