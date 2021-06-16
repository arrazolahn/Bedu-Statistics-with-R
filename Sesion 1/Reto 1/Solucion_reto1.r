

#Abre el fichero que se encuentra en el repositorio y obten sus características, para finalmente imprimir los resultados en un fichero CSV.

#Leer el archivo "netflix_titles.csv" desde Github (https://raw.githubusercontent.com/beduExpert/Programacion-R-Santander-2021/main/Sesion-01/Data/netflix_titles.csv), almacenarlo en un df llamado netflix
netflix <- read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-R-Santander-2021/main/Sesion-01/Data/netflix_titles.csv")


#Obtener la dimensión y el tipo de objeto que se obtiene
dim(netflix)
class(netflix)

#Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015 (Hint: primero podrías filtrar solo aquellas filas del data frame que corresponden a estrenos después del 2015, por ejemplo, dataframe[dataframe$columna > 2015, ])
str(netflix)
net.2015<-netflix[netflix$release_year>2015,]

#Escribir los resultados en un archivo .csv llamado res.netflix.csv (Hint: consulta la función write.csv)

write.csv(net.2015, "res.netflix.csv")
