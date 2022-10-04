# Carga de datos
library(readr)
patentes <- read_delim("Patente/patentes.csv",
delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(patentes)
#Variables
placas<-character(368)
placa<-character(7)
#caga de arreglo
placas<-patentes$Placa
#toma la patente número 100 de 368 
placa<-placas[100]
placa<-"CTPB-60"
#convierte la pantente en arreglo de caracteres
placac<-as.character(unlist(str_split(placa, "")))
#variable placa númerica
placan<-integer(6)
#convertir a números la placa 
for(i in 1:6)
{
if(i<=4) 
  placan[i]<-switch(placac[i],B=1,C=2,D=3,F=4,G=5,H=6,J=7,K=8,L=9,P=0,R=2,S=3,T=4,V=5,W=6,X=7,Y=8,Z=9 )
else 
  placan[i]<-as.integer(placac[i+1]) 
} 
#cálculo del digito verificador
suma<-0
k<-2
for( j in 6:1) 
  {
  suma<-suma+placan[j]*(k)
  k<-k+1
  }
residuo<-11-suma%%11
if(residuo==0) dv<-"0" else if (residuo==10) dv<-"K" else dv<-residuo