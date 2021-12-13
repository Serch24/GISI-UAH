# 2.2
# a.)

encuesta <- na.omit(read.csv2('./encuesta.csv'))

# N(m, d)
notaAcceso <- encuesta$NOTA
m <- mean(notaAcceso)
d <- sd(notaAcceso)

# b)

esperanza <- m
varianza <- d**2

# C)

par(mfrow=c(1, 2))

curve(dnorm(x, m, d), 0, 20, main='Función de densidad')
curve(pnorm(x, m, d), 0, 20, main="Función de distribucción")

par(mfrow=c(1, 1))

# D.)

P.menor.7 <- pnorm(7, m, d)

intervaloX=seq(0,7,0.01)  
xBasePoligonoSombra = c(0,intervaloX,7)  
yTapaPoligonoSombra = c(0,dnorm(intervaloX,m,d),0) 
curve(dnorm(x,m,d),0, 12, ylab="f(x)",main='Nota menor que 7')  
polygon(xBasePoligonoSombra,yTapaPoligonoSombra,col="green") 
texto.porcentaje=paste(round(P.menor.7*100,2),"%") 

text(6.4, 0.1, texto.porcentaje)

# E.) 

p.entre.9.y.7 <- pnorm(9, m, d) - pnorm(7, m, d)

intervaloX=seq(7, 9, 0.01)  
xBasePoligonoSombra = c(7,intervaloX,9)  
yTapaPoligonoSombra = c(0,dnorm(intervaloX,m,d),0) 
curve(dnorm(x,m,d),0, 12, ylab="f(x)",main='Nota entre 7 y 9')  
polygon(xBasePoligonoSombra,yTapaPoligonoSombra,col="green") 
texto.porcentaje=paste(round(p.entre.9.y.7*100,2),"%") 
text(6.4, 0.05, texto.porcentaje)


# F.)

p.mayor.9 <- 1 - pnorm(9, m, d)

intervaloX=seq(9, 20, 0.01)  
xBasePoligonoSombra = c(9,intervaloX,20)  
yTapaPoligonoSombra = c(0,dnorm(intervaloX,m,d),0) 
curve(dnorm(x,m,d),0, 20, ylab="f(x)",main='Nota mayor que 9')  
polygon(xBasePoligonoSombra,yTapaPoligonoSombra,col="green") 
texto.porcentaje=paste(round(p.mayor.9*100,2),"%") 
text(6.4, 0.05, texto.porcentaje)


# G.)

cuartiles <- qnorm(c(.25, .50, .75), m, d)
intervaloX=seq(0, cuartiles[2], 0.01)  
xBasePoligonoSombra = c(0,intervaloX, cuartiles[2])  
yTapaPoligonoSombra = c(0,dnorm(intervaloX,m,d),0) 
curve(dnorm(x,m,d),0, 20, ylab="f(x)",main='segundo cuartil')  
polygon(xBasePoligonoSombra,yTapaPoligonoSombra,col="green") 
texto.porcentaje="50%"
text(6.4, 0.05, texto.porcentaje)

# H.)

notasReales <- encuesta$NOTA
hist(notasReales, freq=FALSE)
curve(dnorm(x, m, d), 0, 20, add = TRUE, col="peru")

# I.) 
plot(density(notasReales))
legend("topleft", legend = c("Notas", "N(8,1.13)"), col = c('black','red' ), lty = 1)

# J.)

qqnorm(notasReales)
qqline(notasReales)
install.packages('car')

qqplot()

# K.)

sum(notasReales) / 74
sum(notasReales<m+d & notasReales>m-d) / 74
sum(notasReales<m+2*d & notasReales>m-2*d) / 74
sum(notasReales<m+3*d & notasReales>m-3*d) / 74

# 1
shapiro.test(notasReales)
