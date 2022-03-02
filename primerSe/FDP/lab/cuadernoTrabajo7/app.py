fechas = [
{'dia': 8, 'mes' : 6, 'año' : 2003}, 
{'dia': 5, 'mes' : 4, 'año' : 2001},
{'dia': 1, 'mes' : 11, 'año' : 2011}
]

def fechaBuscar(fechas, unaFecha):
   for i in range(len(fechas)):
           if fechas[i]['dia'] == unaFecha['dia'] and fechas[i]['mes'] == unaFecha['mes'] and fechas[i]['año'] == unaFecha['año']:
                   return f'La posición es {i}'
   return f'No se ha encontrado'

print(fechaBuscar(fechas, {'dia': 5, 'mes': 4, 'año': 2003}))
