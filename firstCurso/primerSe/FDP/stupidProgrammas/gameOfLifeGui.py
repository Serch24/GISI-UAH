#!/usr/bin/env python3

import turtle
import random
import os

os.system("clear")
fila = 30
columna = 30
grid = [[random.randint(0, 1) for i in range(fila)] for j in range(columna)]

board = turtle.Turtle()


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


def draw_box(t, x, y, size, fill_color):
    t.penup()  # no drawing!
    t.goto(x, y)  # move the pen to a different position
    t.pendown()  # resume drawing

    t.fillcolor(fill_color)
    t.begin_fill()  # Shape drawn after this will be filled with this color!

    for i in range(0, 4):
        board.forward(size)  # move forward
        board.right(90)  # turn pen right 90 degrees

    t.end_fill()  # Go ahead and fill the rectangle!


def draw_chess_board():
    global grid
    start_x = 0  # starting x position of the chess board
    start_y = 0  # starting y position of the chess board
    box_size = 5  # pixel size of each square in the chess board
    while True:
        for i in range(0, fila):  # 8x8 chess board
            for j in range(0, columna):
                color = ""
                if grid[i][j] == 1:
                    color = "black"
                else:
                    color = "white"

                draw_box(
                    board,
                    start_x + j * box_size,
                    start_y + i * box_size,
                    box_size,
                    color,
                )

        nuevoGrid = [["" for i in range(fila)] for j in range(columna)]

        for i in range(0, fila):  # 8x8 chess board
            for j in range(0, columna):
                estado = grid[i][j]
                vecinos = contarVecinos(grid, i, j)
                if vecinos == 3 and estado == 0:
                    nuevoGrid[i][j] = 1
                elif estado == 1 and (vecinos < 2 or vecinos > 3):
                    nuevoGrid[i][j] = 0
                else:
                    nuevoGrid[i][j] = estado

        grid = nuevoGrid


board.hideturtle()
board._tracer(2000)
draw_chess_board()
turtle.done()
