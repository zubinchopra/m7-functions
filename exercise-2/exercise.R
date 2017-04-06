# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
x# "The difference in lengths is N"

CompareLength <- function(v1, v2){
  difference <- abs(length(v1) - length(v2))
  difference.string <- paste("The difference in lengths is", difference)
  return(difference.string)
}


# Pass two vectors of different length to your `CompareLength` function

CompareLength(c(1, 2, 3), c("abc", "def"))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(v1, v2){
  difference <- length(v1) - length(v2)
  if(difference < 0)
    difference.string <- paste("Your second vector is longer by", abs(difference))
  else if(difference > 0)
    difference.string <- paste("Your first vector is longer by", difference)
  else
    difference.string <- paste("Both vectors are equal in length")
  return(difference.string)
}

# Pass two vectors to your `DescribeDifference` function

DescribeDifference(c(1), c("abc", "def"))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
