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

#funcion intervalo confianza media poblacional
ic.media = function (muestra,nivel.confianza){
  n=length(muestra)
  m=mean(muestra)
  s=sd(muestra)
  alfa=1-nivel.confianza
  if (n>30){
    print("Grande")
    z=qnorm(1-alfa/2,0,1)
    li=m-z*s/sqrt(n)
    ls=m+z*s/sqrt(n)
  }
  else{
    t=qt(1-alfa/2,n-1)
    li=m-t*s/sqrt(n)
    ls=m+t*s/sqrt(n)
  }
  c(li,ls)
}
datos=1:10
ic.media(datos,0.95)

#funcion intervalo de proporcion poblacional
ic.proporcion=function(ng,n,nivel.confianza){
  p=ng/n
  alfa=1-nivel.confianza
  z=qnorm(1-alfa/2)
  li=p-z*sqrt(p*(1-p)/n)
  ls=p+z*sqrt(p*(1-p)/n)
  c(li,ls)
}

#funcion intervalo diferencia medias
ic.dif.medias=function(muestra1,muestra2,nivel.confianza,pareados=FALSE){
  alfa= 1 - nivel.confianza
  if(pareados==FALSE) #son muestras independientes
  {
    n1=length(muestra1)
    n2=length(muestra2)
    m1=mean(muestra1)
    m2=mean(muestra2)
    s1=sd(muestra1)
    s2=sd(muestra2)
    if((n1>30)&(n2>30)){
      z=qnorm(1-alfa/2,0,1)
      li=m1-m2-z*sqrt((s1^2/n1)+(s2^2/n2))
      ls=m1-m2+z*sqrt((s1^2/n1)+(s2^2/n2))
    }
    else{
      f=n1+n2-2  #cambiar en casa si queremos
      t=qt(1-alfa/2,f)
      li=m1-m2-t*sqrt((s1^2/n1)+(s2^2/n2))
      ls=m1-m2+t*sqrt((s1^2/n1)+(s2^2/n2))
    }
  }
  else{
    #casos de datos pareados
    
  }
  c(li,ls)
}

ic.dif.proporciones <- function(ng, n, nivel.confianza){
 ng1 <- ng[1] 
 ng2 <- ng[2] 
 n1 <- n[1] 
 n2 <- n[2] 
 p1 <- ng1 / n1
 p2 <- ng2 / n2
 alfa <- 1 -nivel.confianza
 z <- qnorm(1 - alfa / 2, 0, 1)
 
 li <- p1 - p2 - z * sqrt((p1*(1 - p1)/ n1) + (p2 * (1 - p2) / n2))
 ls <- p1 - p2 + z * sqrt((p1*(1 - p1)/ n1) + (p2 * (1 - p2) / n2))
 
 c(li, ls)
}
