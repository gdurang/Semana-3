# installar paquete strigr
install.packages("stringr")
library(stringr)

#Constate y variables
ean13<-"4100016512002"
eani<-integer(13)
sumai<-0
sumap<-0

#creación de vector de entero
eani<-as.numeric(unlist(str_split(ean13,"")))

#Cálculo de código de control 
for(i in 1:12)
{
  if(i%%2)
    {sumai<-sumai+eani[i]}
  if((i%%2)==0)
    {sumap<-sumap+eani[i]} 
}
print(10-(sumai*1+sumap*3)%%10)
