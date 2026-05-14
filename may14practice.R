library(dslabs)
library(dplyr)
library(tidyverse)

## Add a column to an existing table with the mutate function.
data("murders")
murders <- mutate(murders, rate = total/population*100000)
head(murders)

## Subset this new information with filter, or make R select states where the murder rate is less than 0.71.
filter(murders, rate <= 0.71)

## How to then select specific columns from the data table to show.
new_table <- select(murders,state,region,rate)

## This is how to use the pipe function to cleanly streamline the process of extracting specific information from a dataset, in this case the same data we extracted above.
murders %>% select(state,region,rate) %>% filter(rate <= 0.71)