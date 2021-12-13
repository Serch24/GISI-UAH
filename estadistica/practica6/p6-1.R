source('./IC.R')
encuesta <- na.omit(read.csv2('./encuesta.csv'))
notas <- encuesta$NOTA

# 3
ic.media(notas, 0.99)

test <- t.test(notas, conf.level = 0.99) # esta función no entra en el examen
test$conf.int

plot(80:99, rep(mean(notas), 20))

for (nivel in 80:99) {
  lines(c(nivel, nivel), ic.media(notas, nivel/100), lwd=4)
}

# 4

encuestaA1 <- encuesta[encuesta$GRUPO == 'A1',]
notasA1 <- encuestaA1$NOTA
ic.media(notasA1, 0.90)
ic.media(notas, 0.90)

# 5

so <- encuesta$SO
n <- length(so)
soAndroid <- so[so == 'Android']
ng <- length(soAndroid)
ic.proporcion(ng, n, 0.90)
ic.proporcion(ng, n, 0.95)
ic.proporcion(ng, n, 0.99)