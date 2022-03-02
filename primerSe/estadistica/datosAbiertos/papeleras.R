informacion <- read.csv2('PAP_MAD_DA.csv', check.names = TRUE, encoding = 'UTF-8')
tipoDeResiduo <- informacion$tipoResiduo
nivelLlenado <- informacion$nivelLlenado
freq.abs <- table(tipoDeResiduo)
barplot(freq.abs)
pie(freq.abs)
range(nivelLlenado)
range.de.variacion <- (max(nivelLlenado) - min(nivelLlenado)) / 2
(amplitud <- range.de.variacion / 3)


