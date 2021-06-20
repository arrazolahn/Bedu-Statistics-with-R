#Reto 1. Medidas de tendencia central


#Considere el siguiente vector
set.seed(134)
x <- round(rnorm(1000, 175, 6), 1)

library(DescTools)
Mode(x) # mode es diferente de Mode (Case sensitive)

#1. Calcule, la media, mediana y moda de los valores en x
summary (x)
Mode(x)
"
media=179.4
mediana=174.8
mode=174,1 175.9
"

#2. Obtenga los deciles de los números en x
#Encuentre el rango intercuartílico, la desviación estándar y varianza muestral de las mediciones en x

IQR(x)
#rando intercuartilico = 8

sd(x)
#desviacion estandar 5.94

var(x)
#varianza =35.33
