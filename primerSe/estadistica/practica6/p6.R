encuesta <- na.omit(read.csv2('./encuesta.csv'))
source('./IC.R')
#######################################################################
## 1

# a. Calcular los intervalos de confianza para la media poblacional con niveles de confianza del 90%, 95% y 99%

tiempoViaje <- encuesta$VIAJE
ic.media(tiempoViaje, .90)
ic.media(tiempoViaje, .95)
ic.media(tiempoViaje, .99)

# b. Calcular los intervalos de confianza para la varianza poblacional con niveles de confianza del 90%, 95% y 99%

ic.varianza(tiempoViaje, .90)
ic.varianza(tiempoViaje, .95)
ic.varianza(tiempoViaje, .99)

######################################################################
## 2

tiempoViaje23 <- encuesta$VIAJE[encuesta$GRUPO == 'A1']

# a. Calcular los intervalos de confianza para la media poblacional con niveles de
# confianza del 90%, 95% y 99%

ic.media(tiempoViaje23, .90)
ic.media(tiempoViaje23, .95)
ic.media(tiempoViaje23, .99)

# b. Calcular los intervalos de confianza para la varianza poblacional con niveles de
# confianza del 90%, 95% y 99%

ic.varianza(tiempoViaje23, .90)
ic.varianza(tiempoViaje23, .95)
ic.varianza(tiempoViaje23, .99)

#######################################################################################
## 3

# a. Calcular los intervalos de confianza para la proporción poblacional de estudiantes que
# tienen una línea telefónica contratada con las compañías Jazzte/Orange/Simyo con
# un nivel de confianza del 90%, 95% y 99%.

n <- 108
ng <- 26

noventa <- ic.proporcion(ng , n, .90)
noventa5 <- ic.proporcion(ng, n, .95)
noventa9 <- ic.proporcion(ng, n, .99)


# b. Estimar el mínimo y máximo número de estudiantes de la población que tienen una
# línea telefónica contratada con las compañías Jazzte/Orange/Simyo móvil con una
# confianza del 90%, 95% y 99%. NOTA: Utilizar los intervalos de confianza calculados
# con las fórmulas, no con la función prop.test().

n * noventa
n * noventa5
n * noventa9

#####################################################################
## 1

viajeMañana <- encuesta[encuesta$GRUPO == "A1" | encuesta$GRUPO ==  "A2", ]$VIAJE
viajeTarde <- encuesta[encuesta$GRUPO == "B1" | encuesta$GRUPO ==  "B2", ]$VIAJE

# a. Calcular los intervalos de confianza para la diferencia de medias poblacionales del
# tiempo del viaje a la Escuela de los turnos de mañana y tarde con niveles de confianza
# del 90%, 95% y 99%. %. ¿Existe una diferencia significativa entre las medias de las
# dos poblaciones?

ic.1=ic.media(viajeMañana, 0.95)
li.1=ic.1[1]
ls.1=ic.1[2]
ic.2=ic.media(viajeTarde, 0.95)
li.2=ic.2[1]
ls.2=ic.2[2]
plot(c(1,1,2,2), c(li.1,ls.1,li.2,ls.2), xlim = c(0,4))
lines(c(1,1),c(li.1,ls.1))
lines(c(2,2),c(li.2,ls.2))
# Los dos intervalos no se solapan, lo cual es un indicio de que no va a haber coincidencia de medias

ic.dif.medias(viajeMañana, viajeTarde, 0.90)
ic.dif.medias(viajeMañana, viajeTarde, 0.95)
ic.dif.medias(viajeMañana, viajeTarde, 0.99)

## 2

# a. 
# Calcular los intervalos de confianza para la diferencia de medias poblacionales del
# de confianza del 90%, 95% y 99% . %. ¿Existe una diferencia significativa entre las
# medias de las dos poblaciones?

ic.1=ic.dif.medias(viajeMañana, viajeTarde, 0.95)
li.1=ic.1[1]
ls.1=ic.1[2]
ic.2=ic.dif.medias(viajeTarde, viajeMañana, 0.95)
li.2=ic.2[1]
ls.2=ic.2[2]
plot(c(1,1,2,2), c(li.1,ls.1,li.2,ls.2), xlim = c(0,4))
lines(c(1,1),c(li.1,ls.1))
lines(c(2,2),c(li.2,ls.2))
# No, no existe una media significativa entre las dos poblaciones

ic.dif.medias(viajeMañana, viajeTarde, 0.90)
ic.dif.medias(viajeMañana, viajeTarde, 0.95)
ic.dif.medias(viajeMañana, viajeTarde, 0.99)

## 3

# a.
# Calcular los intervalos de confianza para la diferencia de las proporciones
# poblacionales de estudiantes que tienen una línea telefónica contratada con las
# compañías Jazzte/Orange/Simyo en los turnos de mañana y tarde, con un nivel de
# confianza del 90%, 95% y 99%. ¿Existe una diferencia significativa entre las
# proporciones de las dos poblaciones?

solomanana <- encuesta[encuesta$GRUPO == "A1" | encuesta$GRUPO == "A2", ]
soloTarde <- encuesta[encuesta$GRUPO == "B1" | encuesta$GRUPO == "B2", ]
compania <- encuesta[encuesta$MOVIL == "Jazztel/Orange/Simyo",]
movilManana <- compania[compania$GRUPO == "A1" | compania$GRUPO == "A2", ]
movilTarde <- compania[compania$GRUPO == "B1" | compania$GRUPO == "B2", ]

n <- c(length(solomanana), length(soloTarde))
ng <- c(length(movilManana), length(movilTarde))

ic.1=ic.proporcion(ng[1],n[1],0.95)
li.1=ic.1[1]
ls.1=ic.1[2]
ic.2=ic.proporcion(ng[2],n[2],0.95)
li.2=ic.2[1]
ls.2=ic.2[2]
plot(c(1,1,2,2),c(li.1,ls.1,li.2,ls.2), xlim = c(0,4))
lines(c(1,1),c(li.1,ls.1))
lines(c(2,2),c(li.2,ls.2))

ic.dif.proporciones(ng, n, 0.90)
ic.dif.proporciones(ng, n, 0.95)
ic.dif.proporciones(ng, n, 0.99)
# No existe una diferencia significativa