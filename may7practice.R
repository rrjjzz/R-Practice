library(dslabs)
library(tidyverse)

## Names the state with the largest population.
murders$state[which.max(murders$population)]

## How to assign basic height measurements in inches then convert into centimeters.
heights <- c(69,62,66,67,70,70,73,67,73,67,70)
heights * 2.54
## How to see how much a measured height deviates from an average (example average is 69 inches).
heights - 69

## How to obtain the murder rate according to our dataset.
murder_rate <- murders$total/murders$population*100000
## How to then order the states by this obtained murder rate, in decreasing order.
murders$state[order(murder_rate,decreasing=TRUE)]