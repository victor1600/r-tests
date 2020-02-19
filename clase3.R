# Title     : TODO
# Objective : TODO
# Created by: victor
# Created on: 16/2/20

# Casting

numeros<-0:10
print(numeros)
# Maximo
max(numeros)
#minimo
min(numeros)
#mode = type
mode(numeros)

#len
length(numeros)

# promedio
mean(numeros)

## casting a caracteres
caracteres<- as.character(numeros)
caracteres

# Boolean

# 0 es False and everything else is true
logico<-as.logical(numeros)
logico

# casting from characters, se usa []
letras <- letters[1:15]
letrasM <- LETTERS[1:15]
letras

letras2<- as.numeric(letras)
letras2

letras3<- as.logical(letrasM)
letras3

# Editar objetos con data.entry()
datospoi<-rpois(12,3)
datospoi

p<-matrix(datospoi,4,3)
p
# PERMITIR A UN USUARIO EDITAR UNA MATRIZ
data.entry(p)
print(p)

# INDEXING
# starts from 1.
x<-10:20
x[4]<-12312

# using a CONDITIONS to display elements and modify them
x[x>15]<-0
x

x[x==0]

# matrices
# Llena los espacios restantes, repitiendo

d <-1:10
m<-matrix(d,4,5)
m

# elemento 2,3
m[2,3]
# fila 1
m[1,]
# columna 5
m[,5]
# acceder columnas de 3 a 5
m[,3:5]

# usando condiciones
m[m<5]



# operador %%
# obtener residuo
3%%2
# Division entera
3%/%2


d<-1:10
d
m<-matrix(d,4,5)
m

# Buscar matriz dentro de matriz
parimpar<-m
parimpar[m%%2==0]<-'PAR'
parimpar[m%%2!=0]<-'IMPAR'
parimpar

# FUNCIONES ARITMETICAS

# combinar secuencias
c(1:5, seq(10,11,0.2))

x<-1:4
x

y<-rep(1,4)
y

# same length addition
z<-x+y
z

# differente length addition, repite el menor para que alcance al grande.
x<-1:3
y<-1:2
z<-x+y
print(z)


x<-1:4
a<-10
z<-a*10
print(z)

# producto no matricial
m<-1:5
n<-c(1,1,1,2,2,2)
o<-m*n
o

