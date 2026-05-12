library(dslabs)
library(tidyverse)

## How to make a scatterplot of total murders vs population.
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

## How to make a histogram of murder rates.
murders <- mutate(murders, rate = total / population * 100000)
hist(murders$rate)

## How to make a boxplot of murder rates by region.
boxplot(rate~region, data = murders)