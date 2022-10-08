# Punto 1
# b
setwd('/home/serch/Escritorio/GISI/estadistica/examenes/theLab/examenLaboratorio')

# c
getwd()

# d
yaccelga <- read.csv2("./datos.csv")

# e
nrow(yaccelga)

# f Y008612Q, elimino el 2
yaccelga <- yaccelga[-2,]

# g hay 18, osea una menos
nrow(yaccelga)

# Punto 2

goles <- yaccelga$GOLES

moda <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}

mediaGoles <- mean(goles)
medianaGoles <- mean(goles)
modaGoles <- moda(goles)
percentilTreinta <- quantile(goles, 0.30)
percentilSesenta<- quantile(goles, 0.60)
mediaGoles
medianaGoles
modaGoles
percentilTreinta
percentilSesenta


# Punto 3

varianzaGoles <- var(goles)
desviacionTipicaGoles <- sd(goles)
rangoGoles <- range(goles)
coeficienteVariacion <- desviacionTipicaGoles / mediaGoles
varianzaGoles
desviacionTipicaGoles
rangoGoles
coeficienteVariacion


# Punto 4
# A
presupuesto <- yaccelga$PRESUPUESTO
mediaPresupuestoNoAgrupado <- mean(presupuesto)
k <- 3
A <- diff(range(presupuesto))/k
L1 <- min(presupuesto)
L <- L1+A*(0:k) 
presupuestoAgrupado <- cut(presupuesto, breaks=L, right=FALSE, include.lowest=TRUE)
presuAbs <- table(presupuestoAgrupado)
presuRel <- presuAbs / length(presupuesto)
presuAbs
presuRel
mediaPresupuestoNoAgrupado


# Punto 5

par(mfrow=c(1,2))
victorias <- table(yaccelga$VICTORIAS)
barplot(victorias)
boxplot(victorias)        

# Punto 6

soloNumeros <- data.frame(yaccelga$PRESUPUESTO, yaccelga$VICTORIAS, yaccelga$GOLES)
cor(soloNumeros)

# Punto 7

par(mfrow=c(1,1))
barplot(goles, presupuesto)
coeficienteB <- cov(goles, presupuesto) / var(goles)
coeficienteA <- mean(presupuesto) - coeficienteB * mean(goles)
abline(a=coeficienteA, b= coeficienteB)
