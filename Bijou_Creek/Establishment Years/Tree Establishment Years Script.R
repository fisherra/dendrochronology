#################################################################
##                      Bijou Creek Project                    ##
##                    Tree Establishment Years                 ##
#################################################################

## Fisher Ankney
## fisherankney@gmail.com 
## March 8th, 2017

## install ggplot2
install.packages("ggplot2")
library(ggplot2)

## Load the data 

est <- rings_establishment_year


## These are examples

ggplot(data=df2, aes(x=dose, y=len, fill=supp)) +
  geom_bar(stat="identity")
ggplot(diamonds, aes(clarity, fill=cut)) + geom_bar()
