source('./IC.R')

encuesta <- na.omit(read.csv2('./encuesta.csv'))
encuestaManana <- encuesta[(encuesta$GRUPO == "A1") | (encuesta$GRUPO == "A2"), ]
encuestaTarde <- encuesta[(encuesta$GRUPO == "B1") | (encuesta$GRUPO == "B2"), ]

notasManana <- encuestaManana$NOTA
notasTarde <- encuestaTarde$NOTA
# notas

ic.dif.medias(notasManana, notasTarde, 0.90)
ic.dif.medias(notasManana, notasTarde, 0.95)
ic.dif.medias(notasManana, notasTarde, 0.99)

t.test(notasManana, notasTarde, conf.level = 0.90)
t.test(notasManana, notasTarde, conf.level = 0.95)
t.test(notasManana, notasTarde, conf.level = 0.99)

# 5

ic.dif.proporciones(c(27, 23), c(42, 32), 0.90)
ic.dif.proporciones(c(27, 23), c(42, 32), 0.95)
ic.dif.proporciones(c(27, 23), c(42, 32), 0.99)

test <- prop.test(c(27, 23), c(42, 32),conf.level = 0.99)
test$conf.int

soManana <- encuestaManana$SO
soTarde <- encuestaTarde$SO
nSoManana <- length(soManana)
nSoTarde <- length(soTarde)

n <- c(nSoManana, nSoTarde)

soMananaAndroid <- soManana[soManana == "Android"]
ngSoMananaAndroid <- length(soMananaAndroid)

soTardeAndroid <- soTarde[soTarde == "Android"]
ngSoTardeAndroid <- length(soTardeAndroid)

ng <- c(ngSoMananaAndroid, ngSoTardeAndroid)

ic.dif.proporciones(c(27, 23), c(42, 32), 0.99)
ic.dif.proporciones(ng, n, 0.99)
