getwd()
#aqui hay que hacer lo de session para saber el directorio
#estas dos lineas siguientes son importantes si no se ponen bien esta todo el exámen mal
var3=read.table("var3.csv",header=FALSE)[,1]
var3
#1.2 ejercicios
#MEDIA
#con la funcion
media=mean(var3)
(media=mean(var3))
#sin la funcion
mean(var3)
sum(var3)/length(var3)
#MODA
#como crear funciones
sumar=function(a,b) {a+b}
sumar(5,4)/sumar(6,10)
#crear funcion para calcular la moda
moda=function(x) {
  ux = unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
(moda=moda(var3))
#esto es el resultado que habria que poner si nos pregunta calcular la moda en el examen
#VARIANZA
var(var3)
#DESVIACION TIPICA
sd(var3)
#calcular la desviacion tipica con la varianza
sqrt(var(var3))
#MEDIANA
median(var3)
#COEFICIENTE DE VARIACION
sd(var3)/mean(var3)
#COEFICIENTES DE FORMA
install.packages("moments")
library(moments)
#esto no  entra en el examen
#CUARTILES
summary(var3)
quantile(var3)#usar esta
IQR(var3)
#PERCENTILES
quantile(var3,c(0.33,0.66))#percentil 33 y percentil 66
#1.3TABLA DE FRECUENCIAS ABSOLUTAS
tablaFrecAbs=table(var3)

tablaFrecRel=tablaFrecAbs/length(var3)
tablaFrecRel

(tablaFrecAcu=cumsum(tablaFrecAbs))

sum(tablaFrecRel)#es un ejercicio planteado

#1.5.TABLA DE FRECUENCIAS ABSOLUTAS DE UNA VARIABLE CONTINUA AGRUPADA EN INTERVALOS
k=5

diff(range(var3))
A=diff(range(var3))/k
L1=min(var3)
L = L1+A*(0:k) 
(marcas = (L[1:k]+L[1:k+1])/2)
var3_agrupada = cut (var3, breaks=L, right=FALSE, include.lowest=TRUE)
var3_agrupada

table(var3_agrupada)
