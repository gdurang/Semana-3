# Función validadora de RUT
install.packages("rlang")
install.packages("cli")
source("https://install-github.me/r-latinoamerica/clrutr")
library(clrutr)
# Carga de CSV
library(readr)
#Creación de lista rut
rut <- read_delim("RUT/rut.csv", delim = ";",
escape_double = TRUE, trim_ws = TRUE)
View(rut)
typeof(rut)
# Prueba de la Función
rutnum <- c(16019432)
rutnum_dv(rutnum)
rut <- rutnum_rut(rutnum)
rut
rut10 <- rut_rut10(rut)
rut10
rut10_rutnum(rut10)
rutnum <- c(16019432, 16355485, 15724861, 121, 6505922)
dv<-character(5)
i<-1
for(Rut in rutnum)
{
dv[i]<-rutnum_dv(Rut)
i<-i+1
}
dv
# Prueba con la lista
dv<-character(1225)
i<-1
for(Rut in rut$RUT )
{
dv[i]<-rutnum_dv(Rut)
i<-i+1
rut$Dv<-dv[i]
}
dv
# Prueba con un dataframe
df <- data.frame(rut)
df$Dv <- rutnum_dv(rut10_rutnum(df$RUT))
