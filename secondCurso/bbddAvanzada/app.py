#!/usr/bin/python3

# hecho por serch :)
# github.com/serch24/
import csv
import random
from datetime import date, timedelta

# Archivos CSV para cada tabla
with open('personas.csv', 'w', newline='') as personas_file, \
        open('peliculas.csv', 'w', newline='') as peliculas_file, \
        open('generos.csv', 'w', newline='') as generos_file, \
        open('criticas.csv', 'w', newline='') as criticas_file, \
        open('actua.csv', 'w', newline='') as actua_file, \
        open('visualizaciones.csv', 'w', newline='') as visualizaciones_file:

    # Crear los escritores de CSV
    personas_writer = csv.writer(personas_file)
    peliculas_writer = csv.writer(peliculas_file)
    generos_writer = csv.writer(generos_file)
    criticas_writer = csv.writer(criticas_file)
    actua_writer = csv.writer(actua_file)
    visualizaciones_writer = csv.writer(visualizaciones_file)

    # Escribir encabezados de las tablas
    personas_writer.writerow(['nombre', 'nacionalidad', 'año_nacimiento', 'codigo_personas'])
    peliculas_writer.writerow(['año', 'titulo', 'duracion', 'idioma', 'calificacion', 'codigo_pelicula', 'codigo_director'])
    generos_writer.writerow(['genero', 'codigo_pelicula_peliculas'])
    criticas_writer.writerow(['puntuacion', 'texto', 'fecha', 'codigo_pelicula_peliculas', 'codigo_personas_personas'])
    actua_writer.writerow(['codigo_pelicula_peliculas', 'codigo_personas_personas'])
    visualizaciones_writer.writerow(['fecha', 'codigo_personas_personas', 'codigo_pelicula_peliculas'])

    # Insertar personas
    nacionalidades = [f"{chr(i)}{chr(j)}" for i in range(65, 91) for j in range(65, 91)]
    for i in range(400000):
        nombre = f"Persona {i+1}"
        nacionalidad = random.choice(nacionalidades)
        año_nacimiento = date(random.randint(1950, 2020), 1, 1)
        codigo_personas = i + 1
        personas_writer.writerow([nombre, nacionalidad, año_nacimiento, codigo_personas])

    # Insertar películas
    idiomas = [f"{chr(i)}{chr(j)}" for i in range(65, 91) for j in range(65, 91)]
    for i in range(400000):
        año = random.randint(1950, 2023)
        titulo = f"Pelicula {i+1}"
        duracion = random.randint(90, 240)
        idioma = random.choice(idiomas)
        calificacion = random.uniform(0, 10)
        codigo_pelicula = i + 1
        codigo_director = random.randint(1, 400000)
        peliculas_writer.writerow([año, titulo, duracion, idioma, calificacion, codigo_pelicula, codigo_director])

        # Insertar géneros
        generos = [f"Genero {j+1}" for j in range(20)]
        num_generos = random.randint(1, 6)
        for genero in random.sample(generos, num_generos):
            generos_writer.writerow([genero, codigo_pelicula])

        # Insertar críticas
        num_criticas = random.randint(1, 100)
        codigo_personas_val = random.sample(range(1, 400000),num_criticas)
        for j in range(num_criticas):
            puntuacion = random.randint(0, 10)
            texto = f"Crítica {j+1}"
            fecha = date(2022, random.randint(1, 12), random.randint(1, 28))
            codigo_personas = codigo_personas_val[j]
            criticas_writer.writerow([puntuacion, texto, fecha, codigo_pelicula, codigo_personas])

        # Insertar actores
        num_actores = random.randint(10, 30)
        for codigo_personas in random.sample(range(1, 400001), num_actores):
            actua_writer.writerow([codigo_pelicula, codigo_personas])

        # Insertar visualizaciones
        num_visualizaciones = random.randint(1, 100)
        codigo_personas_valores = random.sample(range(1, 400001), num_visualizaciones)
        for j in range(num_visualizaciones):
            fecha = date(2022, random.randint(1, 12), random.randint(1, 28))
            codigo_personas = codigo_personas_valores[j]
            visualizaciones_writer.writerow([fecha, codigo_personas, codigo_pelicula])


    # complejidad algoritmica O(40,000,000)
