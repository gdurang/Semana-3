# Confirma que esten disponibles los paquetea a usar
if(!require(stringr)) { install.packages("stringr"); library(stringr) }
if(!require(readr)) { install.packages("readr"); library(readr) }
# carga el código de la función a aplicar
source("C:/Users/gdurang/OneDrive - Universidad de las Américas/Escritorio/R/Semana 3/Semana-3/EAN/Funcion_EAN/ean.R")
#Carga del CSV
EANSC <- read_csv("EAN/EANSC.csv")
View(EANSC)
#Crea un Dataframe
df<-data.frame(EANSC)
#Reserva memoria para los arreglos a usar 
eans<-character(2100)
eancc<-character(2100)
#Caraga en el arreglo de los datos
eans<-df$EANSC
#Prueba con el segundo EAN del arreglo recorrido  
ean("4100016512002")
for(i in 1:2100)
{
  eancc[i]<-ean(eans[i])
}
#Creación de un dataframe
dfcCC<-data.frame(eans,ean(eans))



