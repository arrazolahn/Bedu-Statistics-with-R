# Reto 3. Loops

#1. Genera un vector de 44 entradas (aleatorias), llamado _ran_ (Hint: utiliza la función _rnorm()_).

ran <- rnorm(44)
ran

#2. Escribe un loop que eleve al cubo las primeras 15 entradas y les sume 12.
ran.cb <- vector()
for(i in 1:15) {
    ran.cb[i] <- (ran[i]^3) + 12
  }
    print(ran.cb)
    
#3. Guarda el resultado en un data frame, donde la primera columna sea el número aleatorio y la segunda el resultado, nómbralo _df.al_.
df.al <- data.frame(numero=ran[1:15], resultado=ran.cb)
df.al
    
    
#4. Escribe el pseudocódigo del loop anterior.
"
ran <- asignacion de 44 numero aleatorios
ran.cb <- {se genera el vector para guardar la operacion}
for (iteramos desde 1 hasta 15)
{
  ran.cb [iteramos sobre cada posicion del vector] <- ejecuando la operacion aritrmetica
}
imprimir valor ran.cb
""
