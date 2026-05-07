library(dslabs)
library(tidyverse)

## Define murder rate.
murder_rate <- murders$total/murders$population*100000
## How to create a vector that specifies states in which their murder rate is less than or equal to 0.71.
index <- murder_rate <= 0.71
## How to then determine which determine which states have murder rates less than or equal to 0.71.
murders$state[index]
## How to calculate how many states have murder rates less than or equal to 0.71.
sum(index)

## We want to move to states satisfying two conditions, one is that the state has to be the West and that the state must have a murder rate lower than 1.00.
## This is how to create the two vectors representing these two conditions.
west <- murders$region == "West"
safe <- murder_rate <= 1
## Define the index that contains both of these vectors and gives that applicable states.
index <- safe & west
murders$state[index]