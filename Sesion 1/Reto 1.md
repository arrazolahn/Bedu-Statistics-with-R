# Reto 1. Lectura y escritura de datos 

# Objetivo
Reforzar la lectura de ficheros CSV y la escritura de variables resultado en un nuevo fichero CSV, de este modo será fácil su lectura en otros lenguajes o plataformas.

# Requisitos
Haber realizado el prework, además de haber realizado los ejemplos de la sesión.

# Desarrollo
Abre el fichero que se encuentra en el repositorio y obten sus características, para finalmente imprimir los resultados en un fichero CSV.

1. Leer el archivo "netflix_titles.csv" desde Github
(https://raw.githubusercontent.com/beduExpert/Programacion-R-Santander-2021/main/Sesion-01/Data/netflix_titles.csv), almacenarlo en un df llamado netflix

2. Obtener la dimensión y el tipo de objeto que se obtiene

3. Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015 
(Hint: primero podrías filtrar solo aquellas filas del data frame que corresponden a estrenos después del 2015, por ejemplo, `dataframe[dataframe$columna > 2015, ]`)

4. Escribir los resultados en un archivo .csv llamado res.netflix.csv
(Hint: consulta la función `write.csv`)

