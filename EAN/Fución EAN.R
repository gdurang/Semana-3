library(stringr)
#creación de la función
ean<-function(x){
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
  return((sumai+sumap*3)%%10)
}
#Con arreglos
eans<-character(2100)
eancc<-character(2100)
eans<-df$EANSC
ean(eans[2])
for(i in 1:2100)
{
  eancc[i]<-ean(eans[i])
}
eancc
#con un Dataframe
df<-data.frame(eanseancc)




