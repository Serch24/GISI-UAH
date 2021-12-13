# 2.1

# A

n <- 10
p <- 50 / 74


# B

esperanza <- n*p
varianza <- n * p*(1 - p)
sqrt(varianza)

# C
par(mfrow=c(1,2))
plot(0:n, dbinom(0:n, n, p), type = "h", main = "Función de [masa de] probabilidad")
plot(0:n, pbinom(0:n, n, p), type = "s", main = "Función de distribución de probabilidad")
par(mfrow=c(1,1))

# D

dbinom(5, n,p)


# E

sum(dbinom(c(0,1,2,3,4,5), n, p))
# o también con...
pbinom(5,n,p)

# F

1 - pbinom(5, n, p)

# si se quiere que la probabilidad
# sea mayor o igual a 5

1 - pbinom(4, n, p)


# G

dbinom(10, n, p)


# H
options(scipen = 100)
dbinom(0, n, p)

# I

sum(dbinom(c(6,7,8), n, p))
# otra forma de entre 6 y 8...
pbinom(8, n, p) - pbinom(5, n, p)

# J

qbinom(c(0.7, 0.90), n, p)

pbinom(6, n, p)
pbinom(7, n, p)

# K

encuenta <- na.omit(read.csv2("./encuesta.csv"))
android <- c(6,6,7,8,5,7,8)
hist(android, breaks = 0:10, freq = FALSE)
plot(0:n, dbinom(0:n, n, p), type = "h")
lines(0:n, dbinom(0:n, n, p), col="red")

# L

muestra <- rbinom(7, n, p)
hist(muestra, breaks = 0:10, freq = FALSE)
lines(0:n, dbinom(0:n, n, p), col='red')


# 3.1

# A
# No hay que usar 5, si no multiplicar 5 * 7

# B

# C
par(mfrow=c(1,2))
plot(0:100, dpois(0:100, 35), type = "h", main = "Función de [masa de] probabilidad")
plot(0:100, dpois(0:100, 35), type = "s")
par(mfrow=c(1,1))

# D
dpois(20, 35) # prob de que lleguen 20 mensajes

# E
ppois(20, 35) # prob de que lleguen 0 a 20 mensajes en una semana

# F

1 - ppois(20, 35)

# G

dpois(0, 35) # prob de que lleguen 0 mensajes en una semana

# H

sum(ppois(c(19, 30), 35))
# ó, también...
ppois(30, 35) - ppois(19, 35)

# I

qpois(c(0.25, 0.5, 0.9, 1), 35) # 1 es infinito

ppois(34, 35)
ppois(35, 35)


# J
muestra <- rpois(1000,35)
hist(muestra, breaks = 0:100, freq = FALSE)
lines(0:100, dpois(0:100,35), col='red')

# K

dpois(3, 5) # 3 mensajes al dia, al dia se reciben 5 mensajes


# L

muestra <- rpois(1000,5)
hist(muestra, breaks = 0:20, freq = FALSE)
lines(0:20, dpois(0:20,5), col='red')

