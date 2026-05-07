library(dslabs)
library(tidyverse)
murder_rate <- murders$total/murders$population*100000

## How to return indices that are TRUE.
x <- c(FALSE,TRUE,FALSE,TRUE,TRUE,FALSE)
which(x)

## How to determine the murder rate in Massachusetts.
index <- which(murders$state == "Massachusetts")
index
murder_rate[index]

## How to get the indices and murder rates of New York, Florida and Texas.
index <- match(c("New York","Florida","Texas"),murders$state)
index
murders$state[index]
murder_rate[index]

## How to see if data from one set is in another dataset.
x <- c("a","b","c","d","e")
y <- c("a","d","f")
y %in% x

## If you are confused, here is to tell if Boston, Dakota, and Washington are states.
c("Boston","Dakota","Washington") %in% murders$state