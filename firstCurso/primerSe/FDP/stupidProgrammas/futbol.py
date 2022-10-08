jugadores = [ 
{"club": "Barcelona", "posicion": "delantero", "goles": 30, "nombre": "pepe"},
{"club": "Sevilla", "posicion": "arquero", "goles": 2, "nombre" : "jose"}
]

def candidatos(jugadores):
   candidato = []
   for jugador in jugadores:
           posicion = jugador["posicion"]
           goles = jugador["goles"]
           if posicion == 'delantero' and goles >= 30:
                   candidato.append(jugador['nombre'])

   return candidato


print(candidatos(jugadores))
