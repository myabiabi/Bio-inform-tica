#resuelve puntos de equilibrio y estabilidad

#Genera un programa que te de 4 n´umeros reales al azar y con ello genera una matriz de
#2 × 2

x <- sample(-100:100, 4) #sample es una función que permite elegir entre una intervalo de números, su primer argumento
#es desde y hasta que número, y el segundo es cuantos de esos número va a imprimir en el objeto
x  #siendo números diferentes cada que lo imprimes

matrizX <- matrix(x, nrow = 2) #crear la matriz con la función matrix, especificar cuantos renglones
matrizX

#• Calcula la traza de la matriz

#debido a que la traza de una matriz es la suma de los elementos de su diagonal principal, 
#su usó las funciones de sum y diag, diag nos da los elementos de la diagonal de la matriz y sum realiza la suma entre estos
traza <- sum(diag(matrizX))
traza

#• Calcula, sin utilizar librer´ıas especializadas, los eigenvalores de la matriz
#la funcio eigen permite calcular tanro eigen valores como eigen vectores
e <- eigen(matrizX)
e
#para especificar cual se requiere:
valores <- e$values
vectores <- e$vectors

#• Calcula la determinante de la matriz
#se usa la función: det()
determinante <- det(matrizX)
determinante

#• Si la matriz viene de un problema de puntos de equilibrio en 2 dimensiones, determina
#a partir de la traza y determinante, el tipo y clase destabilidad que tiene.
d <- traza^2 - (4*determinante)
d

if(determinante < 0){
  print("punto silla")
}else if(determinante > 0 & traza <0 & d > 0){
    print("estable, atractor")
  }else if(determinante > 0 & traza <0 & d < 0){
    print("estable, atractor espiral")
}else if(determinante > 0 & traza >0 & d > 0){
  print("inestable, repulsor")
}else if(determinante > 0 & traza >0 & d < 0){ 
  print("inestable, repulsor espiral")
}


#• (Extra) Como podr´ıas genera 100 matrices al azar y demostrar que aproximadamente
#el 50% de las veces es un punto silla.

cien <- replicate(100, matrix(rnorm(4), 2, 2))
cien
cien <- replicate(100, det(matrix(sample(-10:10, 4), 2, 2)))
cien
length(cien)

sample(-100:100, 4)

menor <- list()
 menor
 
for (i in cien) { 
if(i <0){
  menor <- paste(append(menor,i), collapse = ",")  
}
}
 
 menor
 length(menor)
 as.data.frame(table(menor))
 as.data.frame(table(numbers))
 
