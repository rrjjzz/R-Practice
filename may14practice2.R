library(dslabs)
library(dplyr)
library(tidyverse)

## How to create a basic data frame in R. Note that stringsAsFactors is no longer needed in R4.0.
grades <- data.frame(names=c("John","Juan","Jean","Yoo"), exam_1 = c(95,80,90,85), exam_2 = c(90,85,85,90))
grades