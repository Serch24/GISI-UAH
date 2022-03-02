# Punto 1
yaccelga <- na.omit(read.csv2("./encuesta.csv"))
head(yaccelga)

# Punto 2

moda <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}

viaje <- yaccelga$VIAJE
mediaViaje <- mean(viaje)
medianaViaje <- median(viaje)
modaViaje <- moda(viaje)
mediaViaje
medianaViaje
modaViaje

# Punto 3

# percentil 45 y 80
quantile(viaje, c(0.45, 0.80))


# Punto 4

varianzaViaje <- var(viaje)
desviacionTipicaViaje <- sd(viaje)
rangoViaje <- range(viaje)
varianzaViaje
desviacionTipicaViaje
rangoViaje

# Punto 5

nota <- yaccelga$NOTA
desviacionTipicaNota <- sd(nota)
homoViaje <- desviacionTipicaViaje / mean(viaje)
homoNota <- desviacionTipicaNota / mean(nota)
homoNota * 100 
homoViaje * 100
