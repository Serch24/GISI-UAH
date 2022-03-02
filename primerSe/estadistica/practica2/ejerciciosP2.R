informacion <- read.csv2("./encuesta.csv")
dormir <- informacion$DORMIR
tapply(informacion$VIAJE, informacion$GRUPO,mean, na.rm=TRUE)
aggregate(informacion$VIAJE, by=list(informacion$GRUPO),mean, na.rm=TRUE)
informacion$VIAJE
frec.so <- table(informacion$SO)
frec.dormir <- table(informacion$DORMIR)
frec.grado <- table(informacion$GRADO)
frec.dormir
frec.so
barplot(frec.dormir)
pie(frec.dormir)
barplot(frec.grado)
summary(dormir)
boxplot(dormir)
sinDormir <- informacion
sinDormir$DORMIR=NULL
write.csv2(sinDormir, file="./sinDormir.csv", row.names = FALSE)
# Solución del ejecicio 2
notas <- informacion$NOTA
media <- mean(notas, na.rm=TRUE)
mediana <- median(notas, na.rm=TRUE)
moda <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
moda(notas)
# Varianza
var(viaje, na.rm=TRUE)

# Desviación tipica
sd(na.omit(viaje))

#Rango
range(viaje, na.rm=TRUE)
