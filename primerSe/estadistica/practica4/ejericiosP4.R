vr = function(m, n){
  m^n
}

cr <- function(m, n){
  choose(m+n-1, n)
}

ca <- function(m, n){
  choose(m, n)
}

v <- function(m, n){
  factorial(m) / factorial(m-n)
}

p <- function(m){
  factorial(m)
}

######################################################################
# 1

# A. ¿Cuál es la probabilidad de obtener la palabra SOL si no se pueden repetir letras?
casosPosibles <- p(3)
casosFavorables <- p(1)
probabilidad <- casosFavorables / casosPosibles

# B. ¿Cuál es la probabilidad de obtener la palabra SOL si se pueden repetir letras?
casosPosibles <- vr(3, 3)
casosFavorables <- 1
probabilidad <- casosFavorables / casosPosibles

# C. ¿Cuál de los dos sucesos o eventos anteriores es más probable?

# R// 0.16 para que no se repita, 0.037 para que se repita, es más
# probable que "SOL" no se repita

########################################################
# 2
# A. ¿Cuál es la probabilidad de que los resultados
# de los dos lanzamientos sean distintos?

casosPosibles <- vr(2, 6)
casosFavorables <- v(6, 2)
probabilidad <- casosFavorables / casosPosibles

# B. ¿Cuál es la probabilidad de que los
# resultados de los dos lanzamientos sean iguales?

casosPosibles <- vr(2, 6)
casosFavorables <- (v(6, 2) - 1)
probabilidad <- casosFavorables / casosPosibles

# C. ¿Cuál de los dos sucesos o eventos anteriores es más probable? 
# R// 0.468 distintos, 0.453 iguales, por ende es más probable que sean distintos

########################################################
# 3

# A. ¿Cuál es la probabilidad de sacar los cuatro ases si la baraja es española (40 cartas)? 

casosPosibles <- ca(40, 4)
casosFavorables <- 1
probabilidad <- casosFavorables / casosPosibles

# B. ¿Cuál  es  la  probabilidad  de  sacar  cuatro  o  tres  ases
# si  la  baraja  es  francesa  (52 cartas)? 

casosPosibles <- ca(52, 4)
casosFavorables <- (1 + (48 * ca(4, 3)))
probabilidad <- casosFavorables / casosPosibles

# C. ¿Cuál de los dos sucesos o eventos anteriores es más probable?

# 0.00001094212 con 4 ases con baraja española, 0.0007129005 con 4 ases o 3 ases con baraja francesa,
# por ende es más probable sacar 4 o 3 ases en una baraja francesa.