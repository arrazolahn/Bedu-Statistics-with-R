"El vicepresidente de ventas de una gran empresa afirma que los vendedores están promediando 
no más de 15 contactos de venta por semana. (Le gustaría aumentar esa cantidad.) 
Como prueba de su afirmación, aleatoriamente se seleccionan n = 20 vendedores y se registra
el número de contactos hechos por cada uno para una sola semana seleccionada al azar."

muestra <- c(V1 = 13, V2 = 17, V3 = 20, V4 = 17, V5 = 20, V6 = 20, V7 = 18, V8 = 18, V9 = 16, V10 = 19, 
             V11 = 13, V12 = 17, V13 = 15, V14 = 19, V15 = 16, V16 = 19, V17 = 22, V18 = 10, V19 = 13, V20 = 21)
#¿La evidencia contradice lo dicho por el vicepresidente? Use una prueba con nivel alpha = 0.05.

"Establezca las hipótesis nula y alternativa. ¿Es una prueba de cola superior, de cola inferior o de dos colas?
Decida si rechazar o no la hipótesis nula si el nivel de significancia es alpha = 0.05
Obtenga el p-value de la prueba
Lleve a cabo la prueba con la función t.test
Inspirado en Wackerly, D. et al. (2010). Estadística Matemática con Aplicaciones. Cengage Learning Editores, S.A. de C.V."


"H0= ventas>=15 
Ha= ventas<15
one sided t-test"


t.test(x = muestra, 
       alternative = "greater",
       mu = 15,
       conf.level = 0.95)


"p=0.003 tenemos evidencia suficiente para rechazar la hipotesis nula de que los venedores 
venden mas de 15 contratos por mes"
