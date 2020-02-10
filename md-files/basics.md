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

## Matrixes

1. Creating a matrix using a serie, and nrow and ncolums

ex1:
```r
> matrix(1:6,nrow = 2,ncol = 3)
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
```

ex2:
```r
> matrix(c(4,7,8,9,6,1),nrow = 2,ncol = 3)
     [,1] [,2] [,3]
[1,]    4    8    6
[2,]    7    9    1
```

2. Creating a serie and reshaping it:

```r
> x<-1:16
> x
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
> dim(x)<-c(4,4)
> x
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
[3,]    3    7   11   15
[4,]    4    8   12   16

```

## Data.Frames

Useful to get text and numebrs in same matrix.

```r
> x<-1:4; q<-2:5; names1<-c("poly","kiwi","chicky","lily")
> data.frame(x,q,names1)
  x q names1
1 1 2   poly
2 2 3   kiwi
3 3 4 chicky
4 4 5   lily
```

## Time Series

This is useful when we import data and want R to understand
the data is ordered by date.

* Frequency = 12, is monthly.
* Start in year 1995 in month 3

```r
> x <- ts(data=1:20, frequency = 12,start = c(1995,3))
> x
     Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
1995           1   2   3   4   5   6   7   8   9  10
1996  11  12  13  14  15  16  17  18  19  20        
```