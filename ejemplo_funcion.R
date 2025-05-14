#hay algo mañ

#Principio del tío Ben
# ''poder'' de 10 personajes
# generar mensaje para cada un de ellos
# que indique 'un gran poder conlleva una gran resposabilidad''
#solo si supoder es mayor que cierto valos umbral 

#personajes 
per <- c('ladybug', 'nanami', 'nobara', 'todoroki', 'heinrey_Alles',
                'cat_noir', 'all_Might', 'hitler', 'shinobu', 'mikasa')
per
pod <- c('ladybug', 'nanami', 'nobara', 'todoroki', 'heinry_Alles', 
         'cat_noir', 'all_might', 'hitler', 'shinobu, mikasa')
pod
per

names(pod) <- per
pod
pod[8]

#poder por personaje
poder <- function(x, y, z) sum(x, y,z)

'x es fuerza física'
'y es agilidad'
'z es magia'

ladybug <- poder(70, 90, 80)
ladybug

nanami <- poder(100,100,100)
nanami

nobara <- poder(80, 80, 90)
nobara
  
todoroki <- poder(80, 85, 100)
todoroki

heinry_Alles <- poder(45, 80, 60)
heinry_Alles

cat_noir <- poder(70, 85, 100)
cat_noir

all_might <- poder(200, 100, 100)
all_might

hitler <- poder(20, 80, 0)
hitler

shinobu <- poder(90, 100, 100)
shinobu

mikasa <- poder(0, 100, 0)
mikasa

#rango 
#de 200 pa arriba va a ser ''un gran poder conlleva una gran responsabilidad''
if(pod[8] >= 400){
  print('un gran poder conlleva una gran responsabilidad')
} else if(pod[8] <= 200){
  print('solo es un salto de fe')
}



