# 1 Calcular el coeficiente de correlación lineal
# entre las variables NOTA y DORMIR.
encuesta <- na.omit(read.csv2("./encuesta.csv"))
nota <- encuesta$NOTA
dormir <- encuesta$DORMIR
cor(dormir, nota)
plot(dormir, nota)

# 2
# Dibujar el diagrama de dispersión y la recta de regresión 
# de la variable NOTA en función de la variable DORMIR,
# utilizando la función abline() con los coeficientes a y b. 

coeficienteB <- cov(dormir, nota) / var(dormir)
coeficienteA <- mean(nota) - coeficienteB * mean(dormir)
abline(a=coeficienteA, b= coeficienteB)

# 3
# Predecir el valor de la variable NOTA si
# el valor de la variable DORMIR es 10 horas.

resultado <- coeficienteA + (coeficienteB * 10)
resultado

# 4
# Obtener la tabla de frecuencias absolutas que incluya
# distribuciones marginales (márgenes) de las variables MOVIL (filas) 
# y SO (columnas).
movil <- encuesta$MOVIL
so <- encuesta$SO

freqAbs <- table(movil, so)
addmargins(freqAbs)

# 5
# Calcular las medidas (medias, medianas, modas, varianzas, desviaciones típicas, cuartiles) 
# de la variable NOTA condicionada a cada valor de la variable GRADO utilizando la función 
# tapply(). 
moda=function(x) {
  ux = unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

grado <- encuesta$GRADO
tapply(nota, grado , mean)
tapply(nota, grado , median)
tapply(nota, grado , moda)
tapply(nota, grado , var)
tapply(nota, grado , sd)
tapply(nota, grado , quantile)

# 6
# Dividir  la  pantalla  en  dos  partes  con  la  función  par()  y
# dibujar  los  diagramas  de  barras agrupadas en vertical de las variables
# DORMIR y SO. A la izquierda cuando x=DORMIR e y=SO.
# A la derecha cuando x=SO e y =DORMIR.
par(mfrow= c(1,2))
barplot(table(so, dormir), col = rainbow(10)) #x= dormir, y= so
barplot(table(dormir, so), col = rainbow(10)) #x= so, y=dormir
table(so, dormir)
table(dormir, so)
