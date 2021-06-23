"El archivo players_stats.csv, cotiene estadísticas completas de los jugadores 
de las temporadas 2014-2015, encontrarás datos personales como: altura, peso, entre otras, 
utiliza fichero para:
  
Generar un histograma de los minuntos totales (MIN), de los jugadores y 
agregar una línea donde se muestre la media 
(Hint: para agregar la línea que muestre la media consulta la documentación sobre 
geom_vline y el argumento xintercept)"

data <- read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-R-Santander-2021/main/Sesion-03/Reto-02/players_stats.csv")

#Generar un histograma de edad (Age) y agregar una línea con la media
m<-median(data$Age, na.rm = TRUE)


ggplot() + 
  aes(data$Age) +
  geom_histogram(binwidth = 2, col="black", fill = "purple") + 
  geom_vline(xintercept = m) +
  ggtitle("Histograma de Edades") +
  ylab("Frecuencia") +
  xlab("Edades") + 
  theme_light()


"Hacer un scatterplot de las variables Weight y Height y observar la correlación
que existe entre ambas variables (1 sola gráfica)"

(my_scatplot <- ggplot(data, 
                       aes(x = Weight, y = Height)) + 
   geom_point())


"Utiliza la función which.max para saber quién es el jugador más alto, 
una vez hecho esto, presenta los resultados en una leyenda que diga -
El jugador más alto es: Name, con una altura de: Height-. 
Las unidades de altura deben ser en metros."

(alto <- which.max(data$Height))
paste("El jugador más alto es:", data$Name[alto],"con una altura de:" , round(data$Height[alto]/100,2), "m")

"Utiliza la función which.min para saber quién es el jugador más bajito, 
una vez hecho esto, presenta los resultados en una leyenda que diga:
El jugador más bajito es: Name, con una altura de: Height. 
Las unidades de altura deben ser en metros."
(bajo<- which.min(data$Height))
paste("El jugador más bajo es:", data$Name[bajo], "con altura de:", round(data$Height[bajo]/100,2))

"¿Cuál es la altura promedio?, representa el resultado en una frase que diga: 
La altura promedio es: ALTURA"
paste("La altura promedio es de:", round(mean(data$Height,na.rm=TRUE)/100,2),"m.")

"Generar un scatterplot donde se representen las Asistencias totales (AST.TOV) vs Puntos (PTS),
además has un face wrap con la posición (Pos)."

(my_scatplot <- ggplot(data, 
                       aes(x = AST.TOV, y = PTS)) + 
   geom_point())
my_scatplot + facet_wrap("Pos")
