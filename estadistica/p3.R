encuesta <- na.omit(read.csv2("./encuesta.csv"))
max(na.omit(encuesta$VIAJE))
nrow(encuesta) # se ve cuantas columnas hay
tiempoViaje <- encuesta$VIAJE
dormir <- encuesta$DORMIR

# Relación de las dos variables
cor(tiempoViaje, dormir)
encuestaSoloConNumeros = data.frame(tiempoViaje,dormir, encuesta$NOTA)
cor(encuestaSoloConNumeros)


# Diagrama de dispersión y recta de regresión lineal

plot(tiempoViaje, dormir)
coeficienteB <- cov(tiempoViaje, dormir) / var(tiempoViaje)
coeficienteA <- mean(dormir) - coeficienteB * mean(tiempoViaje)
plot(tiempoViaje, dormir)
abline(a=coeficienteA, b= coeficienteB)

# otro modo

modelo <- lm(dormir ~ tiempoViaje)
# se necesita primero ejecutar un plot para que haga la linea
abline(modelo)
summary(modelo)
resultado <- coeficienteA + (coeficienteB * 150)


# Tablas de distribución conjunta de frecuencias
grupo <- encuesta$GRUPO
so <- encuesta$SO
tablaFreqAbsSo <- table(grupo, so)
tablaFreqAbsSo
freqRelativa <- prop.table(tablaFreqAbsSo) # frecuencia relativa 
addmargins(tablaFreqAbsSo)
addmargins(freqRelativa)
addmargins(tablaFreqAbsSo)
# 1 si es la suma de las filas, 2 con la suma de las columnas
tableRelativaCondicionadaGrupo <- prop.table(tablaFreqAbsSo,1)
tableRelativaCondicionadaGrupo
addmargins(tableRelativaCondicionadaGrupo)

# Cálculo  de  medidas  estadísticas  marginales  con  varias  variables
moda=function(x) {
  ux = unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
sapply(encuestaSoloConNumeros,mean)
sapply(encuestaSoloConNumeros,moda)
tapply(encuestaSoloConNumeros,moda)

# Cálculo  de  medidas  estadísticas  condicionadas  con  dos  variables

tapply(encuestaSoloConNumeros$encuesta.NOTA, encuesta$GRUPO, mean)


# Otros diagramas con dos variables

barplot(table(grupo, so),
        beside = TRUE, col = rainbow(4),
        xlab = "S.O", legend.text = rownames(tablaFreqAbsSo))
barplot(table(so))
# par(mfrow= c(1,2))
par(mfrow= c(1,1))

mosaicplot(tablaFreqAbsSo)

# EN el bb el profe va a subir un apartado para subir 
# los ejercicios propuestos