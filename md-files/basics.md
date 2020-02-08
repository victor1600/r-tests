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
```