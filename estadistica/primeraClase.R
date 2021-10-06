# vectores
numeros = c(1:12)
(tes.con.punto = seq(1, 10, 2))

# ficheros csv

# csv = read.table("./edades.csv") # Lectura de csv
# write.table(numeros, file = "./numeros.csv", col.names = FALSE, row.names = FALSE) # escritura
csv2 = read.table('./vector2.csv', header = FALSE)[,1]
# Aritmetica con R
csv2 + numeros # suma los dos vectores, tienen que tener el mismo size :D
sum(numeros)

