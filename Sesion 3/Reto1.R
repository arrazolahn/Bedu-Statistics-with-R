#RETO 1. Altura de los alumnos

#1. Carga el data set BD_Altura_Alunos.csv (Hint: Si tienes algún inconveniente con los datos, 
#lee sobre el argumento sep de la función read.csv)

data <- read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-R-Santander-2021/main/Sesion-03/Reto-01/BD_Altura_Alunos.csv", sep=";")
head(data)
names(data)

#2. Realiza el histograma con la función hist(), nativa de R
hist(data$Altura, breaks = seq(140,200, 5), 
     main = "Histograma de Alturas",
     xlab = "Alturas",
     ylab = "Frecuencia")

#3. Ahora realiza el histograma con la función ggplot. (Recuerda que debes instalar el paquete ggplot2)
#Reflexiona sobre el ejercicio y contesta:
data %>%
  ggplot() + 
  aes(Altura) +
  geom_histogram(binwidth = 5, col="black", fill = "purple") + 
  ggtitle("Histograma de Mediciones") +
  ylab("Frecuencia") +
  xlab("Altura") + 
  theme_light()

