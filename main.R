# Title     : TODO
# Objective : TODO
# Created by: victor
# Created on: 7/2/20

# Get help of desired function
?ls

# Run code
# Select desired code and hit ctr+enter

# Crear objeto
paly = 5
paly
# Create random numbers using normal distribution
# how much numbers is the parameter
kiwi = 5 + rnorm(1)
kiwi

# Get the same number
# set.seed(10) Will return the random number in index 10
set.seed(100)
kiwi<-5+rnorm(10)
kiwi

# Creating and array
kiwi = c(1,2,3)
kiwi

# List created variables
ls()

# look al variables starting with k
ls(pat='k')

# Erase variable
rm(kiwi)

kiwi = 2
paly = 5
paly * kiwi

# length of a variable
length(kiwi)

# variable's type
mode(kiwi)

# Get working directory
getwd()

# set workind directory
wd = "/home/victor/courses/r-tests"
setwd(wd)
getwd()

# list files
list.files()

# Import a library
library(readxl)
# Load an excel file
excelTest = read_excel('testExcel.xlsx')
excelTest

 # SEQUENCES

# Generate numbers
poly = 1:30
poly

# sequence Define limits and setp
seq(1,5,0.5)

# 10 numbers from 2 to 15
seq(length=10,from=2, to=15)

c =scan()
print(c)


# repeats number n times
# Will repeat 30 times number 1
x = rep(1,30)

#  create a sequence
sequence(1:4)

x = c(5,6,7,8)
sequence(x)

# Expand grid, obtener todas las combinaciones posibles
expand.grid(a<-("poly,kiwi"),b<-c("gonzalez","arevalo"),tiempo<-5))

# CREATING HISTOGRAMS
x = rnorm(3000)
x

hist(rnorm(10000))

# POISSON DIST
y <-rpois(3000,4)
hist(y)

# Get a sample, parecido a una tomobola
# Valores, cuantas veces repetira el experimento, con remplazo, y
# Probabilidad de cada evento.
s <- sample(x=c(1,2,3,4), size=1000,replace=TRUE,prob =c(0.4,2.0,3.0,1))
s
# GET a LINE CHART

library('ggplot2')
# Geometria
# Color colors just border, fill, colors the entire thing
qplot(s,geom='bar',main='line chart', xlab='muestras',
ylab='pruebas',color='red',fill=I('green'))

