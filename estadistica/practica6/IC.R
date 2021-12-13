# Función intervalo confianza media poblacional

ic.media <- function(muestra, nivelConfianza){
  n <- length(muestra)
  m <- mean(muestra)
  s <- sd(muestra)
  alfa <- (1 - nivelConfianza)
  if (n > 30) {
    z <- qnorm(1 - (alfa/2), 0, 1)
    li <- m - z * (s / sqrt(n))
    ls <- m + z * (s / sqrt(n))
  }else{
    t <- qt(1 - (alfa / 2), n - 1)
    li <- m - t * (s / sqrt(n))
    ls <- m + t * (s / sqrt(n))
  }
  
  c(li, ls)
}



# función intervalo de proporción poblacional
ic.proporcion <- function(ng, n,nivelConfianza){
  p <- ng / n
  alfa <- 1 - nivelConfianza
  z <- qnorm(1 - alfa / 2)
  li <- p - z * sqrt(p * (1 - p) / n)
  ls <- p + z * sqrt(p * (1 - p) / n)
  c(li, ls)
}
