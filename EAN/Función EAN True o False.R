library(stringr)
#creación de la función
eanTF<-function(x){
  #variables locales
  sumai<-0
  sumap<-0
  #convirtiendo la lista de caracteres en arreglo numérico 
  eani<-as.numeric(unlist(str_split(x, "")))
  #recorriendo el arreglo sin código de control (posición 13)
  for(i in 1:12)
  {
    if(i%%2) # sumar los números en posición impar
    {sumai<-sumai+eani[i]}
    if((i%%2)==0) # sumar los números en posición par
    {sumap<-sumap+eani[i]} 
  }
  # retornando el código de control
  return(((sumai+sumap*3)%%10)==eani[13])
}
library(readr)
EANCC <- read_csv("EAN/EANCC.csv")
View(EANCC)
#creando variables
eanccc<-character(2100)
eancccTF<-character(2100)
#cargando arreglo con códigod de barra
eanccc<-EANCC$EANCC
for( i in 1:2100)
  eancccTF[i]<-eanTF(eanccc[i])
df<-data.frame(eanccc, eancccTF)
#Revisando los EAN erroneos
View(df)
#Más rápido con length
length(eancccTF[eancccTF == TRUE])
#Más facil con table
table(eancccTF)



    