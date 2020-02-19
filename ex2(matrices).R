# Title     : TODO
# Objective : TODO
# Created by: victor
# Created on: 16/2/20

a<-matrix(1:20,4,5)
a

b<-matrix(1:20, 4,5,TRUE)
b

a[1:2,]
b[,4:5]
a[1:3,]
a[,1]<-0
b[3,]<-50
b

a[a>10]
a[a%%3!=0]
# Tomar cada columna menos la columna 2
b[,-2]
b[,-c(2,4)]

# Serie de tiempo con matriz
content<-matrix(1:100,20,5)
content
colnames(content)<-c('Poly',"kiwi","lolo",'tiky','tely')

x <- ts(data=content, frequency = 4,start = c(2013))
x

# apalancamiento

# version determinista
montoInicial<-10000
tasaInteres<-0.05
rendimiento<-0.12
# porcentaje de 10000 a prestar
prestamo<-0.1

montoPrestamo<-montoInicial*prestamo
disponible<-montoInicial + montoPrestamo
pagoPrestamo<- montoPrestamo*(1+tasaInteres)
montoFinal<-disponible*(rendimiento+1)
montoFinalNeto<-montoFinal-pagoPrestamo
tasaRendimientoInversion<-(montoFinalNeto-montoInicial)/montoInicial

montoPrestamo
disponible
pagoPrestamo
montoFinal
montoFinalNeto
tasaRendimientoInversion

# Version estocastica
montoInicial<-10000
tasaInteres<-0.05
prestamo<-0.1

# para que no sean aleatorios usamos seed
set.seed(100)
cantidadDatos = 10000
rendimiento<-rnorm(cantidadDatos, 0.12,0.20)
rendimiento

montoPrestamo<-montoInicial*prestamo
disponible<-montoInicial + montoPrestamo
pagoPrestamo<- montoPrestamo*(1+tasaInteres)
montoFinal<-disponible*(rendimiento+1)
montoFinalNeto<-montoFinal-pagoPrestamo
tasaRendimientoInversion<-(montoFinalNeto-montoInicial)/montoInicial
# resultado
tasaRendimientoInversion

# hacer histograma de datos
# distribucion normal quiere decir que la mayoria de datos caen en la media
# cuando distrubucion es normal, media se parece a mediana
hist(tasaRendimientoInversion)
summary(tasaRendimientoInversion)

# probabilidad de perder:
# Graficar
plot.ecdf(tasaRendimientoInversion)
# numero exacto
# Que valor del rendimiento me interesa hacia atras
# se lee: probabilidad que tenga 0% de ganancia o menos, es esta:
ecdf(tasaRendimientoInversion)(0)

# probabilidad de ganar mas del 20%
1-ecdf(tasaRendimientoInversion)(0.20)


apalancamiento<-function(montoI,tasaI,pres,cant) {
  # Version estocastica
  montoInicial<-montoI
  tasaInteres<-tasaI
  prestamo<-pres

  # para que no sean aleatorios usamos seed
  set.seed(100)
  rendimiento<-rnorm(cant, 0.12,0.20)
  rendimiento

  montoPrestamo<-montoInicial*prestamo
  disponible<-montoInicial + montoPrestamo
  pagoPrestamo<- montoPrestamo*(1+tasaInteres)
  montoFinal<-disponible*(rendimiento+1)
  montoFinalNeto<-montoFinal-pagoPrestamo
  tasaRendimientoInversion<-(montoFinalNeto-montoInicial)/montoInicial
  # resultado
  tasaRendimientoInversion

  # hacer histograma de datos
  # distribucion normal quiere decir que la mayoria de datos caen en la media
  # cuando distrubucion es normal, media se parece a mediana
  hist(tasaRendimientoInversion)
  summary(tasaRendimientoInversion)

  # probabilidad de perder:
  # Graficar
  plot.ecdf(tasaRendimientoInversion)
  # numero exacto
  # Que valor del rendimiento me interesa hacia atras
  # se lee: probabilidad que tenga 0% de ganancia o menos, es esta:
  x<-ecdf(tasaRendimientoInversion)(0)


  resultadoL = 1-ecdf(tasaRendimientoInversion)(0.20)
  return(x)



}

resultado<-apalancamiento(10000, 0.05,0.1,232112)
print(resultado)

x<-1:4
x

prueba<-function (n){
  z<-n-5
  return(z)
}

x<-prueba(1:20)
x



