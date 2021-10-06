import os
import time


def empieza(matrix):
    global mario
    global peach
    os.system("clear")
    # print(matrix)
    for indice1, i in enumerate(matrix):
        for indice2, j in enumerate(i):
            if j == "p":
                peach = [indice1, indice2]

            if j == "m":
                mario = [indice1, indice2]
            print(j, end=" ")
        print()
    print("\n")
    while mario[0] != peach[0] or mario[1] != peach[1]:
        if mario[0] > peach[0] and mario[1] != peach[1]:
            matrix[mario[0]][mario[1]] = "-"
            mario[0] -= 1
            matrix[mario[0]][mario[1]] = "m"
        elif mario[0] == peach[0] and mario[1] < peach[1]:
            matrix[mario[0]][mario[1]] = "-"
            mario[1] += 1
            matrix[mario[0]][mario[1]] = "mp"
            # I need to fix this :(

        for indice1, i in enumerate(matrix):
            for indice2, j in enumerate(i):
                print(j, end=" ")
            print()
        print("\n", mario, peach)


grid = [["-", "-", "p"], ["-", "m", "-"], ["-", "-", "-"]]
empieza(grid)
