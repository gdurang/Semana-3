ean<-function(x){
  if (!is.character(x)) {
    stop("La función ean() espera una cadena de caracteres numericos.")
  }
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
  if ((sumai+sumap*3)%%10==0) {cc<-0} else {cc<-10-(sumai+sumap*3)%%10} 
  return(cc)
}