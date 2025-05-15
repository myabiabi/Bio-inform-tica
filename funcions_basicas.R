#Elabora un script que usando estructuras de selección y funciones resuelva lo siguiente:
  
# 1.Dada tu fecha de nacimiento te genere los días hasta hoy que has vivido, las horas y los segundos.
vida <- function(a, m, d) { #funcion vida donde a es el año cuando naciste y m del mes cuando naciste y d del dia que naciste
  e <- (2021 - a) #e calcula la edad que tienes restando el año actual menos 'a'
  m1 <- (2021 + m) #calcula los años ''cerrados'' que has vivido mas tus meses segun tu cumpleaños
  d1 <- (m1*365) #d1 calcula los días que has vivido multiplicando el numero de años por 365 días
  d2 <- (m1 + d ) #suma los meses ya en día ''cerrados'' mas los días de tu fecha de nacimiento
  h1 <- (d2*24) #h1 calcula los las horas que has vivido mutliplicando los dias por 24 (horas)
  s1 <- (h1*60) #s1 calcula los los segundos que has vivido mutliplicando las horas por 60 (segundos)
  if(a <= 2022){ #menos igual a 2022 para asegurar que ya naciste 
    return(paste("tu edad es", e, "has vivido", d1, "días", "y", s1, "segundos" ))
  } #paste para dar el mensaje 
}
  vida(2001, 05, 06)
  
  #2. Que dado tu nombre y tu fecha  de nacimiento te indique qué signo zodiacal eres
nombre <-readline (prompt = "¿Cuál es tu nombre?")
nombre

tu_zodiaco <- function () {
  nombre <- readline (prompt = "¿cuál es tu nombre ") #te pegunta tu nombre
  signo <- zodiaco(0, 22)
  print (paste ("Hola", nombre, "tu numero signo es:", signo)) #imprime nombre con variable
}
  zodiaco <- function(m,d) { #calcula tu zodiaco segun el mes siento diciembre 0, enero 1, febre 2 y así
if(m >= 0 & m <= 1 & d <= 22){
  print("capricornio")
  }else if (m >= 1 & m <= 2 & d <= 20){
      print("acuario")}
    
  }
  zodiaco(0, 22)

####ESTA INCOMPLETO  

#Dec. 22  - Jan. 19  : Capricorn 
Jan. 20  - Feb. 17  : Aquarius 
Feb. 18  - Mar. 19  : Pisces 
March 20 - April 19 : Aries 
April 20 - May 19   : Taurus 
May 20   - June 20  : Gemini 
June 21  - July 21  : Cancer 
July 22  - Aug. 22  : Leo 
Aug 23   - Sept. 21 : Virgo 
Sept. 22 - Oct. 22  : Libran 
Oct. 23  - Nov. 21  : Scorpio 
Nov. 22  - Dec. 21  : Sagittarius