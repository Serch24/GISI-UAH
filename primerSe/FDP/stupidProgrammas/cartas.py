#!/bin/python3

def sumaTriunfos(baraja, inicio, fin):
   acumular = 0
   for i in baraja:
           if i["valor"] in (2,3,10,11):
                   acumular+=  1

   return acumular
           
   
barajas = [{"palo": "oro", "valor": 2},
{"palo": "oros", "valor": 2},
{"palo": "basto", "valor": 6},
{"palo": "test", "valor": 10}]

print(f'tienes {sumaTriunfos(barajas, 1,1)} triunfos')
