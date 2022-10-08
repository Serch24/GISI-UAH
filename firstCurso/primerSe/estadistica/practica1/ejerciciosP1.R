##### punto 1 #####

help() # Muestra una ventana de ayuda general sobre R. 
help(sum)#  Muestra una ventana de ayuda sobre la función que está entre paréntesis. 
# Help.search("sum") # Busca ayuda sobre objetos o funciones que tengan nombre o título que contenga la cadena "mean"
#Imprimir por pantalla valor de variable# 
x=2 
x
# Multiplicar números
2*7 
# División real de números# 
7/2 
# División entera#
7%/%2 
# Módulo (resto de la división) 
7%%2 
# Potencia# 
7^2 
# Exponencial# 
exp(1)
# Raiz Cuadrada# 
sqrt(4)
#logaritmo neperiano#
log(1) 
#logaritmo de un número base 10#
log(4,10)
#Valor absoluto de un número# 
abs(-4)
#Número pi#
pi 

#GLOSARIO VECTORES# 
#Creación de un vector de 3 elementos enteros#
c(1,2,3)
#Creación de un vector de 3 elementos booleanos# 
c(T,F,T)
#Creación de un vector de 3 cadenas de caracteres# 
c("esta","asignatura","me encanta")
#Concatenación de vectores#
x=c(1,2,3) 
y=c(1,2,3) 
z=c(x,y) 
print(z)
#Extracción de elementos de vector conociendo los índices# 
x=c(6,8,4,2,1,9,5,3,10,12) 
x[c(1,3,7)]
#Extracción de elementos excluyendo el de una posición, en este caso la 3# 
x[-3] 
#Extracción de elementos excluyendo los de algunas posiciones, en este caso la 1 y la 3
x[-c(1,3)] 
#Especificar si elementos cumplen condición lógica#
x>5
#Creación de vectores de variables# 
x=1 
y=2 
z=3 
v=c(x,y,z)
v[y]
mean(1:5)
prod(1:5)

#Función sum(x) si x es un vector calcula la suma de los términos de un vector.
#Función mean(x) si x es un vector calcula la media de los términos de un vector.
#Función prod(x) si x es un vector calcula el producto de los términos de un vector.
#Función length(x) si x es un vector calcula el número  de los términos de un vector
#Función max(x) si x es un vector calcula el mayor de los términos de un vector.
#Función min(x) si x es un vector calcula el menor de los términos de un vector.
v=c(1,2,3,4,5,8,-1,-9,7) 
sum(v)
mean(v)

sum(v)/length(v)
max(v)
min(v)
prod(v)
#Creación de patrones#
# a:b: Genera un vector de números desde a hasta b# 
#seq(a,b): Genera un vector de números desde a hasta b#
#rep(a,b): Genera un vector de b componentes de valor a# 
1:5

9:3 
seq(1,10) 
seq(1,10,by=2)
rep(1,8)
rep(c(1,2,3),4)
#Valores Nulos NA(Not Available)# 
#is.na(x) pregunta qué elementos de x son faltantes. Sólo retorna cierto para el valor nulo#
x=c(1,1,NA,2,2) 
x 
is.na(x)
x*2

#x[!is.na(x)]elimina los valores nulos del vector x# 
x 
x=x[!is.na(x)] 
x 

# Trabajando con vectores desde Ficheros#
# Situarnos en el directorio de trabajo en R Studio menú Session/ Set Working Directory/Choose Directory# 
# Cargar un fichero llamado Edades que se encuentra en directorio elegido y asignarlo a la variable vEdades, sin copiar la cabecera header= FALSE y generando una única columna [,1]
vEdades = read.table("./numeros.csv", header = FALSE)[,1] 
(vEdades) # Me permite visualizar en pantalla lo asignado a la variable 

#Guardar  vector  creado  en  R  en  un  fichero  csv,  si  seguimos  trabajando  en  la  misma carpeta#
write.table(vEdades,file = "prueba.csv", col.names=FALSE, row.names=FALSE) 

##### 2 #####
cuadrados <- c(1:10) ^ 2
cuadrados2 <- c(2:11) ^ 2
(cuadrados2 - cuadrados) # da como resultado una sucesión de un termino más 2


##### 3 #####
vector1 <- c(1:3)
vector2 <- c(10:12)
vectorSuma <- vector2 + vector1
print(vectorSuma) # Muestra la suma


##### 4 #####

vector3 <- c(1:3)
vector4 <- c(10:12)
vector5 <- vector4 / vector3
vector6 <- vector4 * vector3
print(vector5)
print(vector6)


##### 5 #####

print(sum(vector3))
print(mean(vector3))
print(prod(vector3))
print(sum(vector3) / length(vector3)) # media sin usar la función mean


##### 6 #####

vector7 <- c(5:15)
print(max(vector7))
print(min(vector7))