# Title     : TODO
# Objective : TODO
# Created by: victor
# Created on: 9/2/20

# Two ways to create a matrix
# args: range of numbers, or a sequence.
#1
matrix(1:6,nrow = 2,ncol = 3)

# Fill by columns or by rows
matrix(1:6,2,3,TRUE)

# 2



# Create a serie
# Give that serie a shape.
x<-1:16
x
dim(x)

dim(x)<-c(4,4)

## DATAFRAME

# Can hold numbers and letters.
# Junta por columnas las variables creando una matriz

x<-1:4; q<-2:5; names1<-c("poly","kiwi","chicky","lily")

# Juntar dos matrices
# Mismo numero de filas
data.frame(x,q,names1)

a<-matrix(1:6,nrow = 3,ncol = 2)
b<-matrix(1:12,nrow = 3,ncol = 4)
data.frame(a,b)

# TimeSeries

x <- ts(data = 1:20,start = 2000)
x

# Empezar desde mes 3, del year 1995
# frequency es el numero de periodos subanuales
x <- ts(data=1:20, frequency = 12,start = c(1995,3))
x
