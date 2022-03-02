encuesta <- read.csv2('./encuesta.csv', encoding = "UTF-8")
encuesta
viaje <- encuesta$VIAJE
grupo <- encuesta$GRUPO
tapply(viaje,grupo, mean, na.rm=TRUE)
soAbsoluto <- table(encuesta$SO)
table(encuesta$VIAJE)
barplot(soAbsoluto, ylab = "Personas" ,xlab = "Sistema operativo" , main = "jaja" ,col = c('red', 'black'))
barplot(table(viaje),col = rainbow(9))
barplot(table(viaje), col = heat.colors(20))
pie(table(viaje))
barplot(table(encuesta$GRADO))
pie(table(encuesta$MOVIL))
summary(viaje)
boxplot(encuesta$NOTA)
boxplot(encuesta$DORMIR, horizontal = TRUE, outline = FALSE)
boxplot(encuesta$VIAJE,horizontal = TRUE, outline = FALSE)
stem(viaje)
stem(encuesta$NOTA)
stem(encuesta$SO)
hist(encuesta$VIAJE, breaks = c(5,30,60,120,180))
write.csv2(table(encuesta$SO),"./so.csv")
moda <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
moda(na.omit(viaje))
mean(viaje, na.rm = TRUE)
mean(na.omit(viaje))
table(na.omit(viaje))
quantile(na.omit(viaje), c(.45,.80))
range(na.omit(viaje))
var(na.omit(viaje))

head(data.frame(viaje, grupo))
