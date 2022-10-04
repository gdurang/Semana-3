library(stringr)
ean<-function(x){
  sumai<-0
  sumap<-0
  eani<-as.numeric(unlist(str_split(x, "")))
  for(i in 1:12)
  {
    if(i%%2)
    {sumai<-sumai+eani[i]}
    if((i%%2)==0)
    {sumap<-sumap+eani[i]} 
  }
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
df<-data.frame(eancc)




