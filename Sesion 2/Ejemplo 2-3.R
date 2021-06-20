# Ejemplo 3. Funciones `na.omit` y `complete.cases`

# Ahora vamos a considerar el conjunto de datos `airquality`, observamos primero
# algunas de sus filas

head(airquality)
library(dplyr)

# El tipo de objeto que es y el tipo de variables que contiene

str(airquality)

# observamos la dimensión

dim(airquality)

# Con la función `complete.cases` podemos averiguar cuales son aquellas filas
# que no contienen ningún valor perdido (NA) y cuales son aquellas filas
# que tienen al menos un valor perdido.

bien <- complete.cases(airquality)
str(bien)

# La variable bien, es un vector lógico con `TRUE` en las posiciones que 
# representan filas de `airquality` en donde no hay NA's y con `FALSE`
# en las posiciones que representan aquellas filas de `airquality` en donde
# se encontraron NA's

# Por tanto, podemos contar el número de filas en donde no hay NA´s de la 
# siguiente manera

sum(bien)

# Podemos filtrar aquellas filas sin NA's de la siguiente manera

airquality[bien,]

data <- select(airquality, Ozone:Temp) #from data frame aiquality select from ozone (:) to Temp
apply(data, 2, mean) #2 indicates columns, 1 could indicate rows,  third argument is the funcion
apply(data, 2, mean, na.rm = T) 
"When na.rm is TRUE, the function skips over any NA values. However, 
when na.rm is FALSE, then it returns NA from the calculation being done on the entire row or column."

# `na.omit` devuelve el objeto con casos incompletos eliminados
"Another the na.omit() function deletes any rows in the dataframe containing missing data
in R missing data is designated by NA so that it can be detected easily. 
It is accepted by data.frame() without difficulty"

(m1 <- apply(na.omit(data), 2, mean))

b <- complete.cases(data)
#Return a logical vector indicating which cases are complete, i.e., have no missing values.The resulting vector contains just True or False 


(m2 <- apply(data[b,], 2, mean))
"data[b,] will subset the dataframe and return the rows with the true values in the b vector. This results in a new date frame in which 
by columns the mean will be applied. The resulting data frame will be stored in m2 "

str(data)
identical(m1, m2)
#identical is The safe and reliable way to test two objects for being exactly equal. It returns TRUE in this case, FALSE in every other case.


