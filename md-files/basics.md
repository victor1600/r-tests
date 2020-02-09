# Basics

Install from:
> https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-18-04

### Running code from terminal
```shell script
Rscript main.R
```


### Running Code in Pycharm
Select code lines and hit ctrl + enter.

### Creating  numbers using normal distribution

* Create a random normal distribution of 1 element
```r
kiwi = 5 + rnorm(1)
```

* Create a random normal of n elements

```r
kiwi = 5+rnorm(10)
```

* Get random number of given index of random distribution

```r
set.seed(100)
kiwi<-5+rnorm(10)
```

### Creating an array

```r
kiwi = c(1,2,3)
```

### Unix-like variables
```r
# List variables used
ls()

# Search for variables starting with l
ls(pat='k')

# Remove a variable from memory
rm(kiwi)

# Len of elements
length(kiwi)

# Get working directory
getw()

# Set working directory
wd = "/home/victor/courses/r-tests"
setwd(wd)

# List files in working directory
list.files()

# Ask for users inpunt

x = scan()

```

### Using external libraries

* **Install Library**  Open up a terminal and type ```sudo -i R``` and write ```install.packages('txtplot')```
 to install a new library.

* Import a library and use it:

```r
library(readxl)
# Load an excel file
excelTest = read_excel('testExcel.xlsx')
excelTest
```


### Number sequence

```r
# First way
poly = 1:30

# Second way
seq(1,5,0.5)

# Third way
seq(length=10,from=2, to=15)

# repeats number n times
# Will repeat 30 times number 1
x = rep(1,30)

#  create a sequence, withing given range, aumenting 1
sequence(1:4)

x = c(5,6,7,8)
sequence(x)


```

## Combinations

```r
# Expand grid, obtener todas las combinaciones posibles
expand.grid(a<-("poly,kiwi"),b<-c("gonzalez","arevalo"),tiempo<-5))
```

## Graphics and Creating Samples
Usados para variables continuas. Probabilidad acumulada.

* Histograms
```r
# CREATING HISTOGRAMS
x = rnorm(3000)
x

hist(rnorm(10000))

# POISSON DIST
y <-rpois(3000,4)
hist(y)
```

* Line chart

> Sample allows creating samples of given events and its probabilities
```r
# Get a sample, parecido a una tomobola
# Valores, cuantas veces repetira el experimento, con remplazo, y
# Probabilidad de cada evento.
s <- sample(x=c(1,2,3,4), size=1000,replace=TRUE,prob =c(0.4,2.0,3.0,1))

# GET a LINE CHART

library('ggplot2')
# Geometria
# Color colors just border, fill, colors the entire thing
qplot(s,geom='bar',main='line chart', xlab='muestras',
ylab='pruebas',color='red',fill=I('green'))
```