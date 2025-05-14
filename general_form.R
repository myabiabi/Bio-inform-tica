#Solución cuadrática
#a) elaborar un programa en R de la fórmula cuadrática
#b) soluciones reales 
#c) indicar cuando solo hay una solución
#d) cuando no tenga solución en los reales mandar mensaje de que no tiene solución


qdtk <- function(a, b, c) { #1. crear una función con las variables de a, b y c, estas 3 son las variables de la ecuación a resolver
  
  print(paste0("La ecuación cuadrática que queremos resolver es: ", a, "x^2 + ", b, "x + ", c, ".")) #se visualiza la cuación con las variables esto dará como resultado
  #la función paste0 se utilizó para armas la oración para que cuando diera la ecuación las elementos estuvieran juntos, es decir, que el coeficiente este junto a la variable
  #si usaramos solo paste se obtendría 'a x^2' en lugar de 'ax^2'' 
  #la ecuación se resuelve despejando la x por lo que la ecuación a resolver que como x= -b+-sqrt(b^2-4ac)
  #bajo esta estructura se basa el programa paa resolverla
  
  radicando <- (b^2) - (4*a*c) #se define al radicando, esto es importante ya que la ecuación solo tiene solución si el radicando es mayor o igual a 0
  
  if(radicando < 0) { #entonces se pone la condicion de que si el radicando es menor a 0 no habrá solución
    return(paste0("Esta ecuación no tiene su solución en los números reales")) #las raíces cuadradadas de números negativos se solucionan con 
    #números imaginarios, estos no pertenecen a los reales.
  } 
  else if(radicando > 0) { #ahora el caso donde la raíz cuadradad da como resultado un nuemro real
    x1 <- (-b + sqrt(radicando)) / (2*a)
    x2 <- (-b - sqrt(radicando)) / (2*a)
    
    return(paste0("La soluciones para la ecuación son las siguientes: ", #para que el pograma no solamente de número positivos,
                  #y también arroje decimales, se utilizó la función de format la cual puede expresar un resultado de fracción en decimales,
                  #además el de round que redonde el resultado de x1 y x2 a 3 dígitos a la derecha del punto decimal
                  format(round(x1, 3)), " y ",
                  format(round(x2, 3),), "."))  
  }
  else #en caso de que el radicando sea 0:
    x <- (-b) / (2*a) #raíz cuadrada de 0 es 0, por lo que la cuadratica queda solo con -b/2a
  return(paste0("Solo hay un posible resultado, el cual es: ",
                x))
}


qdtk(1,-14,48)



-


