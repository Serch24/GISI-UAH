# Ejercicio 1

# a Definir una variable aleatoria binomial para el experimento
n <- 50
p <- 1/6


# b Calcular la esperanza y varianza de la variable aleatoria

esperanza <- n * p

varianza <- esperanza * (1 - p)

# c Dibujar las funciones de probabilidad y distribución de la variable aleatoria

par(mfrow=c(1, 2))
plot(0:n, dbinom(0:n, n, p), type = "h", main = "Función de probabilidad")
lines(0:n, dbinom(0:n, n, p))
plot(0:n, pbinom(0:n, n, p), type = "s", main = "Función de distribución")
par(mfrow=c(1, 1))

# d Calcular la probabilidad de que nunca aparezca el lado con el valor 6.

1 - dbinom(6, n, p)

# e Calcular la probabilidad de que siempre aparezca el lado con el valor 6.

dbinom(6, n, p)

# f Calcular la probabilidad de que el lado con el valor 6 aparezca menos de 10 veces.




# g Calcular la probabilidad de que el lado con el valor 6 aparezca más de 10 veces.

# h Calcular la probabilidad de que el lado con el valor 6 aparezca entre 20 y 40 veces.

# i Calcular los cuantiles 50 y 90.

qbinom(0.5 , n, p)

qbinom(0.9 , n, p)

# j Generar aleatoriamente 100 valores para la variable y comprobar si el histograma se
 # ajusta realmente a una función de probabilidad Binomial.

numerosAlea <- rbinom(100, n, p)

hist(numerosAlea, breaks=0:n, freq=FALSE)
lines(0:n, dbinom(0:n, n, p))

# Si se ajuta a una función de probabilidad binomial

#############################################################################################

# Ejercicio 2

encuesta <- na.omit(read.csv2('./encuesta.csv'))

# a. Definir una variable aleatoria binomial para el experimento

nEje2 <- 6

pEje2 <- 26 / 74

# b. Calcular la esperanza y varianza de la variable aleatoria

esperanzaEj2 <- nEje2 * pEje2
varianzaEje2 <- esperanzaEj2 * (1 - pEje2)

# c. Dibujar las funciones de probabilidad y distribución de la variable aleatoria

par(mfrow=c(1, 2))
plot(0:nEje2, dbinom(0:nEje2, nEje2, pEje2), type = "h", main = "Función de probabilidad")
lines(0:nEje2, dbinom(0:nEje2, nEje2, pEje2))
plot(0:nEje2, pbinom(0:nEje2, nEje2, pEje2), type = "s", main = "Función de distribución")
par(mfrow=c(1, 1))

# d. Cuál es la probabilidad de que exactamente 3 de los 6 estudiantes tengan contrato
#con Jazzte/Orange/Simyo

dbinom(3, nEje2, pEje2)

# e. Cuál es la probabilidad de que 3 o menos de los 6 estudiantes tengan contrato con
# Jazzte/Orange/Simyo

pbinom(3, nEje2, pEje2) 
sum(dbinom(0:3, nEje2, pEje2)) # o también se puede de esta forma

# f. Cuál es la probabilidad de que tengan contrato con Jazzte/Orange/Simyo más de 3
# de los 6 estudiantes

1 - pbinom(3, nEje2, pEje2)

# g. Cuál es la probabilidad de que los 6 estudiantes tengan contrato con
# Jazzte/Orange/Simyo

dbinom(6, nEje2, pEje2)

# h. Cuál es la probabilidad de que ninguno de los 6 estudiantes tenga contrato con
# Jazzte/Orange/Simyo


dbinom(0, nEje2, pEje2)

# i. Cuál es la probabilidad de que entre 2 y 4 estudiantes tengan contrato con
# Jazzte/Orange/Simyo

sum(dbinom(2:4, nEje2, pEje2))

# j. Cuál es el valor de los cuartiles (25%, 50%, 75%, 100%) de la variable aleatoria

qbinom(c(0.25, 0.5, 0.75, 1) ,nEje2 ,pEje2)

# k. Si tenemos los datos de la encuesta original a los 74 alumnos, comprobar si tomando
# las respuestas en grupos de 6 alumnos, el histograma se ajusta realmente a la función
# de probabilidad binomial.

gruposDe6Android <- c(4, 3, 4, 3, 5, 4)
hist(gruposDe6Android, breaks=0:nEje2, freq=FALSE)
lines(0:nEje2, dbinom(0:nEje2, nEje2, pEje2))


# l. Repetir el apartado anterior pero utilizando datos generados aleatoriamente con R, en
# lugar de los datos reales

ran <- rbinom(6,nEje2, pEje2)
hist(ran, breaks=0:nEje2, freq=FALSE)
lines(0:nEje2, dbinom(0:nEje2, nEje2, pEje2))


#####################################################################################
# Ejercicio 3

# a. Definir una variable aleatoria de Poisson para el número de visitas en una hora

lambda <- 120 / 24

# b. Calcular la esperanza y varianza de la variable aleatoria

esperanzaLambda <- lambda

varianzaLambda <- lambda

# c. Dibujar las funciones de probabilidad y distribución de la variable aleatoria

par(mfrow=c(1,2))
plot(0:100, dpois(0:100,lambda), type="h", main="Función de probabilidad")
lines(0:100, dpois(0:100, lambda))
plot(0:100 ,ppois(0:100, lambda), type="s", main="Función de distribución")
par(mfrow=c(1, 1))

# d. Cuál es la probabilidad de que haya 4 visitas en una hora

dpois(4, lambda)

# e. Cuál es la probabilidad de que haya 4 o menos visitas en una hora

ppois(4, lambda)
sum(dpois(0:4, lambda)) # o de esta forma

# f. Cuál es la probabilidad de que haya más de 4 visitas en una hora

1 - ppois(4, lambda) 


# g. Cuál es la probabilidad de que no haya ninguna visita en una hora

dpois(0, lambda)

# h. Cuál es la probabilidad de que haya entre 4 y 6 visitas en una hora

ppois(6, lambda) - ppois(4, lambda)

# i. Cuál es el valor de los cuartiles (25%, 50%, 75%, 100%) de la variable aleatoria

qpois(c(.25, .5, .75, 1), lambda)

# j. Generar aleatoriamente 100 valores para la variable y comprobar si el histograma se
# ajusta realmente a la función de probabilidad de Poisson.

numerosPoisson <- rpois(100, lambda)
hist(numerosPoisson, breaks = 0:100, freq=FALSE)
lines(0:100, dpois(0:100, lambda))

# k. Definir una nueva variable aleatoria para calcular la probabilidad de que en un día
# haya 100 visitas.

options(scipen = 100)

cienVisitas <- dpois(100, x)

# l. Generar aleatoriamente 100 valores para la nueva variable y comprobar si el
# histograma se ajusta realmente a la función de probabilidad de Poisson.

nuevosNumeros <- rpois(100, x)
hist(nuevosNumeros, breaks = 0:100, freq=FALSE)
lines(0:100, dpois(0:100, nuevosNumeros))

################################################################################
# Ejercicio 4

# a) Definir una variable aleatoria Normal para el tiempo del viaje de un estudiante
mTiempo <- mean(encuesta$VIAJE)
dTiempo <- sd(encuesta$VIAJE)
# variable X -> N(mTiempo, dTiempo)

# b) Calcular la media o esperanza y la varianza de la variable aleatoria

esperanzaTiempo <- mTiempo
varianzaTiempo <- dTiempo ** 2

# c) Dibujar las funciones de densidad y distribución de la variable aleatoria

par(mfrow=c(1,2))
curve(dnorm(x, mTiempo, dTiempo), -10, 20, main="Función de densidad")
curve(pnorm(x, mTiempo, dTiempo), -10, 20, main="Función de distribucción")
par(mfrow=c(1,1))


# d) Cuál es la probabilidad de que un estudiante seleccionado al azar tarde menos de 1
# hora en llegar a la escuela. Dibujar en el diagrama de la función de densidad el área
# correspondiente a la acumulación de la probabilidad obtenida.

menosDeUnaHora <- pnorm(60, mean = mTiempo, sd = dTiempo)

intervaloX=seq(0, 7, 0.01)
xBasePoligonoSombra = c(0, intervaloX, 7)
yTapaPoligonoSombra = c(0, dnorm(intervaloX, mTiempo, dTiempo), 0)
curve(dnorm(x, mTiempo, dTiempo), 0, 12, ylab="f(x)", main='Menos de 1 hora')
polygon(xBasePoligonoSombra, yTapaPoligonoSombra, col="green")
texto.porcentaje=paste(round(menosDeUnaHora*100, 2),"%")
text(4, 0.5, texto.porcentaje)

# e) Cuál es la probabilidad de que un estudiante seleccionado al azar tarde entre 1 hora
# y 1 hora y media. Dibujar en el diagrama de la función de densidad el área
# correspondiente a la acumulación de la probabilidad obtenida.

horaYHoraMedia <- pnorm(90, mean = mTiempo, sd = dTiempo) - menosDeUnaHora

intervaloX = seq(7,9,0.01)
xBasePoligonoSombra = c(7, intervaloX, 9)
yTapaPoligonoSombra = c(0, dnorm(intervaloX, mTiempo, dTiempo), 0)
curve(dnorm(x, mTiempo, dTiempo), 4, 12, ylab="f(x)", main='Viaje entre 1h y 1h30m')
polygon(xBasePoligonoSombra, yTapaPoligonoSombra, col="green")
texto.porcentaje=paste(round(horaYHoraMedia*100, 2), "%")
text(8, 0.1, texto.porcentaje)

# f) Cuál es la probabilidad de que un estudiante seleccionado al azar tarde más de 1 hora
# y media. Dibujar en el diagrama de la función de densidad el área correspondiente a
# la acumulación de la probabilidad obtenida.

masDeHoraMedia <- 1 - pnorm(90, mean = mTiempo, sd = dTiempo)

intervaloX = seq(9, 20, 0.01)
xBasePoligonoSombra = c(9, intervaloX, 20)
yTapaPoligonoSombra = c(0, dnorm(intervaloX, mTiempo, dTiempo), 0)
curve(dnorm(x, mTiempo, dTiempo), 4, 12, ylab="f(x)", main='Mas de 1h30m')
polygon(xBasePoligonoSombra, yTapaPoligonoSombra, col="green")
texto.porcentaje=paste(round(masDeHoraMedia*100, 2), "%")
text(8, 0.1, texto.porcentaje)

# g) Cuál es el valor de los cuartiles (0.25, 0.5, 0.75) de la variable aleatoria. Dibujar en el
# diagrama de la función de densidad el área correspondiente al segundo cuartil.

segundoCuartil <- qnorm(c(.25, .5, .75), mean = mTiempo, sd = dTiempo)[2]
probSegundoCuartil <- pnorm(segundoCuartil, mean = mTiempo, sd = dTiempo)

intervaloX=seq(4, segundoCuartil , 0.01)
xBasePoligonoSombra = c(4, intervaloX, segundoCuartil)
yTapaPoligonoSombra = c(0, dnorm(intervaloX, mTiempo, dTiempo), 0)
curve(dnorm(x,mTiempo,dTiempo), 4, 12, ylab="f(x)",main='Segundo cuartil')
polygon(xBasePoligonoSombra, yTapaPoligonoSombra, col="green")
texto.porcentaje=paste(round(probSegundoCuartil*100, 2),"%")
text(7, 0.1, texto.porcentaje)


# h) Si tenemos los datos de la encuesta original a los 74 estudiantes, comprobar si
# tomando los tiempos reales, el histograma se ajusta realmente a la distribución
# Normal.

horasReales <- encuesta$VIAJE
hist(horasReales, freq = FALSE)
curve(dnorm(x, mean = mTiempo, sd = dTiempo), add = TRUE)
# Si se ajusta a la distribucción normal.

# i) Repetir el apartado anterior pero haciendo la comprobación utilizando el diagrama de
# la función de densidad generada con density().

plot(density(horasReales))
curve(dnorm(x, mean = mTiempo, sd = dTiempo), -35, 300, add = TRUE, col='red')
legend("topleft", legend=c("Horas","N(63.13, 37.07)"), col=c("black", "red"), lty=1)

# j) Repetir el apartado anterior pero haciendo la comprobación utilizando el 
# diagrama Q-Q (Cuantil-Cuantil) sin y con región de confianza del 95%.

#install.packages('car')
#library(car)
par(mfrow=c(1, 2))
qqnorm(horasReales, main = "Q-Q plot")
qqline(horasReales, col="red")
qqPlot(horasReales, main = "Q-Q plot con región de confianza del 95%")
par(mfrow=c(1, 1))

# k) Repetir el apartado anterior pero haciendo la comprobación mediante la regla empírica
# 68-95-99 de la distribución Normal.

sum(horasReales < mTiempo + dTiempo & horasReales > mTiempo - dTiempo) / 74
sum(horasReales < mTiempo + 2 * dTiempo & horasReales > mTiempo - 2 * dTiempo) / 74
sum(horasReales < mTiempo + 3 * dTiempo & horasReales > mTiempo - 3 * dTiempo) / 74

# l) Repetir el apartado anterior pero haciendo la comprobación mediante test de hipotesis

shapiro.test(horasReales)

# m) Repetir los apartados h) a l) pero utilizando datos generados aleatoriamente con R,
# en lugar de los datos reales.
notaSimuladas = rnorm(74, mTiempo, dTiempo)
hist(notaSimuladas, freq=FALSE)
curve(dnorm(x, mTiempo, dTiempo), 0, 150, add = TRUE)

plot(density(notaSimuladas))
curve(dnorm(x, mTiempo, dTiempo), 0, 150, add=TRUE, col="red")
legend("topleft",legend=c("Notas","N(63.13, 37.07)"), col=c("black", "red"), lty=1)

par(mfrow=c(1,2))
qqnorm(notaSimuladas, main = "Q-Q plot")
qqline(notaSimuladas, col="red")
qqPlot(notaSimuladas, main = "Q-Q plot con región de confianza del 95%")
