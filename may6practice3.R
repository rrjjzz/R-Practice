library(dslabs)
library(tidyverse)
data("murders")
sort(murders$total)

## Putting elements in order.
x <- c(31,4,15,92,65)
x
sort(x)

## Returns the index that will put x in order.
index <- order(x)
x[index]
order(x)

## These two commands list the first ten state names and first ten state abbreviations in the murders dataset.
murders$state[1:10]
murders$abb[1:10]

## How to order state abbreviations by numbers.
index <- order(murders$total)
murders$abb[index]

## How to find details on the highest number of total murders, index with highest number of murders, and state name with the highest number of total murders.
max(murders$total)
i_max <- which.max(murders$total)
murders$state[i_max]

## How to find same details for the minimum murder value.
min(murders$total)
i_min <- which.min(murders$total)
murders$state[i_min]

## Returns RANK of values.
x <- c(31, 4, 15, 92, 65)
x
rank(x)