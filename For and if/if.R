# creación de la función f a trozos
M<-100
f <- function(x) 
{
  if (x<0) 
    {
    r<-5
    } 
    else 
      {
      if (x<=10) 
        {
        r<-x*10+5
        } 
        else 
          {
          r<-105
          }
      }
M<<-r
return(r)
}
# Prueba de la función
f(-10)
f(5)
f(15)
M
