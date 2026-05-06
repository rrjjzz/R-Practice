## In this section, we talk about vector coercion.
x <- c(1, "canada", 3)
x
class(x)

## Here we switch data classes to fit.
x <- 1:5
y <- as.character(x)
y
as.numeric(y)

## Here we talk about NAs in data science, which correlate to mssing data.
x <- c("1", "b", "3")
as.numeric(x)
## Note this will return '[1] 1 NA 3' with a warning message 'NAs introduced by coercion.'