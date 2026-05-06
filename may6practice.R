## We can make vectors using concatenate.
codes <- c(380, 124, 818)
country <- ("italy","canada","egypt")

## We can name elements of a numeric vector.
codes <- c(italy=380, canada=124,egypt=818)

## Name the elements of a numeric vector using names() function.
codes <- c(380, 124, 818)
country <- c("italy","canada","egypt")
names(codes) <- country

## Use square brackets to subset for accessing specific vector elements.
codes[2]
codes[c(1,3)]
codes[1,2]
codes[2,3]

## If vector entries are named, they can be accessed by referring to the name.
codes["canada"]
codes[c("egypt","italy")]

## To view basic sequences of numeric values, use the seq() function.
seq(1:10)
seq(1,10,1)
seq(1,10,2)
1:5