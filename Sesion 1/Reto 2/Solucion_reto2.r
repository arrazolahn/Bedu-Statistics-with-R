
#Utiliza el data frame de ventas de libros por Amazon y realiza las siguientes actividades:
  
#Almacénalo en un data frame que se llame amazon.best
amazon.best <- read.csv("bestsellers with categories.csv")
str(amazon.best)

#Calcula el data frame transpuesto, asígnale el nombre de tAmazon y conviértelo en un data frame (Hint: consulta la ayuda sobre las funciones t y as.data.frame)
tAmazon <-as.data.frame(t(as.matrix(amazon.best)))
str(tAmazon)

#Usa el nombre de los libros como el nombre de las columnas (Hint: consulta la documentación de names,
#tienes que hacer algo similar a names(dataframe) <- vector de nuevos nombres)
colnames(tAmazon) <-tAmazon[1,]

row.names(tAmazon)

#¿Cuál es el libro de menor y mayor precio?
libro_cheapest<- which.min(tAmazon ["Price",])
libro_cheapest

libro_teureste<-which.max(tAmazon ["Price",])
libro_teureste
