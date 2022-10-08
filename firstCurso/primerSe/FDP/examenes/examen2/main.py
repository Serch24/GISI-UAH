#!/usr/bin/env python3
import os

os.system('clear')

def crea_bd_jugadores():
    """Crea una base de datos de jugadores vacia"""
    return {}

def incluir_partida(bd, jugador: str, desc: str, juego: str, tiempo: float):
    """Incluye una nueva partida en la base de datos.
    Si es la primera partida del jugador, hay que incluirle,
    si el jugador ya tenía partidas, se actualiza la información,
    sustituyendo su descripción y añadiendo la partida a la
    lista de partidas ya existente.
    """
    if jugador in bd:
        sublista = []
        for k in bd[jugador]['partidas']:
            juegoo = k[0]
            tiempoo = k[1]
            sublista.append((juegoo, tiempoo))
        sublista.append((juego, tiempo))
        bd[jugador]['partidas'] = sublista
        bd[jugador]['desc'] = desc
    else:
        bd[jugador] = {'partidas': [(juego, tiempo)], 'desc': desc}

bd = crea_bd_jugadores()

incluir_partida(bd, "juan", "Me llamo juan y me gusta MINECRAFT y AMONGUS", "portal2", 45.0)
incluir_partida(bd, "juan", "Me llamo Juan y me gusta mucho MINECRAFT y AMONGUS", "amongus", 10.2)
incluir_partida(bd, "juan", "Me llamo Jua y AMONGUS", "amongus", 100.2)
incluir_partida(bd, "pepe", "Soy pepe y mi juego preferido es MINECRAFT", "amongus", 12.5)
incluir_partida(bd, "ana", "Soy ana y suelo jugara a MINECRAFT", "minecraft", 20.3)
incluir_partida(bd, "ana", "Soy ana y suelo jugara a MINECRAFT",
"minecraft", 22.3)
incluir_partida(bd, "ana", "Soy ana y suelo jugara a MINECRAFT",
"amongus", 22.3)

def obtener_juego_mas_frecuente(bd) -> (str, int):
    """Obtiene el juego del que se han jugado más partidas.
    """
    todosLosJuegos = []
    for nombre in bd:
        for juegos in bd[nombre]['partidas']:
            todosLosJuegos.append(juegos[0])
    maximo = 0
    for i in todosLosJuegos:
        mayor = todosLosJuegos.count(i)
        if(mayor > maximo):
            maximo = mayor
            primero = i

    return(primero, maximo)


def crear_hashtags(bd):
    """Identifica nombres de juegos en mayúsculas en las descripciones
    de los jugadores
    y los convierte en hashtags.
    """
    for nombre in bd:
        for juegos in bd[nombre]:
            descripcion = bd[nombre]['desc']
            nl = descripcion.split(' ')
            for i in range(len(nl)):
                if nl[i].isupper():
                    nl[i] = '#'+nl[i]
            nuevaCadena = ' '.join(nl)
            bd[nombre]['desc'] = nuevaCadena

def obtener_ranking(bd, juego:str, m: int)->list:
    """Obtiene el ranking de los `m` mejores jugadores del juego.
    """
    listaTiempo = []
    for nombre in bd:
        for juegos in bd[nombre]['partidas']:
            listaTiempo.append([nombre, juegos[1]])

obtener_ranking(bd, 'amongus', 2)
