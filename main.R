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