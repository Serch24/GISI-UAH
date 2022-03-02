setwd("/home/s3rzh/Escritorio/GISI-UAH/estadistica/examenes/ultimoExamen")
getwd()
yaccelga <- na.omit(read.csv2("./datos.csv"))
yaccelga <- yaccelga[-2, ]
head(yaccelga)

########################################################################################
zonas <- yaccelga$ZONA
total <- length(zonas)
zonaNorte <- length(zonas[zonas == "Norte"])

n <- 20
p <- zonaNorte / total

# a

dbinom(10, n, p)

# b

pbinom(15, n, p) - pbinom(5, n, p)

########################################################################
options(scipen = 100)
lambdaGoles <- round(mean(yaccelga$GOLES)) # lo he redondeado :)

# a
dpois(30, lambdaGoles)

# b
1 - ppois(50, lambdaGoles)

###########################################################################

presupuestos <- yaccelga$PRESUPUESTO
mPresupuesto <- mean(presupuestos)
dPresupuesto <- sd(presupuestos)

# a

probabilidad20y50m <- pnorm(50, mPresupuesto, dPresupuesto) - pnorm(20, mPresupuesto, dPresupuesto)

# b

par(mfrow=c(1,2))
curve(dnorm(x, mPresupuesto, dPresupuesto), 0, 200, main="Función de densidad")

hist(presupuestos, freq=FALSE)
curve(dnorm(x, mPresupuesto, dPresupuesto), 0, 200, add = TRUE, main = "Presupuestos")
# Sí son similares.
par(mfrow=c(1,1))


##############################################################################33

ic.media = function(muestra, nivel.confianza) {
  alfa=1-nivel.confianza
  n=length(muestra)
  s=sd(muestra)
  m=mean(muestra)
  if (n>=30) #Muestra grande
  {
    z=qnorm(1-alfa/2,0,1)
    li=m-z*(s/sqrt(n))
    ls=m+z*(s/sqrt(n))
  }
  else #Muestra pequeña
  {
    t=qt(1-alfa/2,n-1)
    li=m-t*(s/sqrt(n))
    ls=m+t*(s/sqrt(n))
  }
  c(li,ls)
}

# a
ic.media(presupuestos, 0.95)

#############################################################################

ic.proporcion = function(ng, n, nivel.confianza) {
  alfa=1-nivel.confianza
  p=ng/n
  z=qnorm(1-alfa/2,0,1)
  li=p-z*sqrt(p*(1-p)/n)
  ls=p+z*sqrt(p*(1-p)/n)
  c(li,ls)
}
nZonas <- length(zonas)

# a
ic.proporcion(zonaNorte, nZonas, 0.95)


# b
n300 <- 300
round(108 * ic.proporcion(zonaNorte, n300, 0.95))

#############################################################################

ic.dif.medias = function(muestra1, muestra2, nivel.confianza, pareados=FALSE) {
  alfa=1-nivel.confianza
  if (pareados==FALSE)
  {
    n1=length(muestra1)
    n2=length(muestra2)
    m1=mean(muestra1)
    m2=mean(muestra2)
    s1=sd(muestra1)
    s2=sd(muestra2)
    if ((n1>=30)&(n2>=30))
    {
      z=qnorm(1-alfa/2,0,1)
      li=m1-m2-z*sqrt((s1^2/n1)+(s2^2/n2))
      ls=m1-m2+ z*sqrt((s1^2/n1)+(s2^2/n2))
    }
    else
    {
      #f = aproximación de Welch
      f=((((s1^2/n1)+(s2^2/n2))^2)/((s1^2/n1)^2/(n1+1)+(s2^2/n2)^2/(n2+1)))-2
      t=qt(1-alfa/2,f)
      li=m1-m2-t*sqrt((s1^2/n1)+(s2^2/n2))
      ls=m1-m2+ t*sqrt((s1^2/n1)+(s2^2/n2))
    }
  }
  else
  {
    d=muestra1-muestra2
    m=mean(d)
    s=sd(d)
    n=length(d)
    if (n>=30)
    {
      z=qnorm(1-alfa/2,0,1)
      li=m-z*(s/sqrt(n))
      ls=m+z*(s/sqrt(n))
    }
    else
    {
      t=qt(1-alfa/2,n-1)
      li=m-t*(s/sqrt(n))
      ls=m+t*(s/sqrt(n))
    }
  }
  c(li,ls)
}

presupuestoSur <- yaccelga[yaccelga$ZONA == 'Sur', ]$PRESUPUESTO
presupuestoNorte <- yaccelga[yaccelga$ZONA == 'Norte', ]$PRESUPUESTO

ic.dif.medias(presupuestoSur, presupuestoNorte, 0.95)

# b

ic.1=ic.media(presupuestoSur, 0.95)
li.1=ic.1[1]
ls.1=ic.1[2]
ic.2=ic.media(presupuestoNorte,0.95)
li.2=ic.2[1]
ls.2=ic.2[2]
plot(c(1,1,2,2),c(li.1,ls.1,li.2,ls.2), xlim = c(0,4))
lines(c(1,1),c(li.1,ls.1))
lines(c(2,2),c(li.2,ls.2))
# No, no existe una diferencia significativa porque no se colapsan