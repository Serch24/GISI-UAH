import os

empieza = input("quieres empezar?\n")
# global variables
palabraOculta = "sergio"
estaLaLetra = False
guiones = "______"
vidas = 5


def pintar(letraUsuario):
    # os.system("clear")
    for indice, letra in enumerate(palabraOculta):
        if letra == letraUsuario:
            global guiones
            tmp = list(guiones)
            tmp[indice] = letraUsuario
            guiones = "".join(tmp)
            global estaLaLetra
            estaLaLetra = True

    os.system("clear")
    print(guiones)
    if estaLaLetra is False:
        global vidas
        vidas -= 1

    estaLaLetra = False  # reset variable to default value

    if guiones == palabraOculta:
        print("You win!!!!!\n")
        return 0
    else:
        return 1


while empieza != 0:
    letraUsuario = input("escribe una letra\n")
    # call pintar function, i should rename this function haha
    empieza = pintar(letraUsuario)
    if vidas == 0:
        print("You lost! :)\n")
        print("the word was:", palabraOculta)
        empieza = 0
