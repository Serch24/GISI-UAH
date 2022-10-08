#!/usr/bin/env python3
from tkinter import *

ventana = Tk()
ventana.geometry("400x400")


# def recibir():
#     elTexto = texto.get()
#     print(elTexto)


# se crea un botón
# boton = tkinter.Button(ventana, text="primero", command=recibir)
# boton2 = tkinter.Button(ventana, text="segundo")
# texto = tkinter.Entry(ventana)

# Agrega cositas
# boton.grid(row=0, column=0)
# boton2.grid(row=0, column=2)
# texto.grid(row=1, column=0)
for r in range(3):
    for c in range(3):
        cell = Entry(ventana, width=10)
        cell.grid(row=r, column=c)

# esto a lo último
ventana.mainloop()
