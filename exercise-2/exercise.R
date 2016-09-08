# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  diff.string <- paste('The difference in lengths is', diff)
  return(diff.string)
}  

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), 1:100)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    sentence <- paste('Your first vector is longer by', diff, 'elements')
  } else {
    sentence <- paste('Your second vector is longer by', -diff, 'elements')
  }
  return(sentence)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:15, 9:17)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
# This helps: http://stackoverflow.com/questions/5754367/using-substitute-to-get-argument-name-with
DescribeDifference <- function(a,b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    vector.name <- deparse(substitute(a))
    sentence <- paste('Vector', vector.name, 'is longer by', diff, 'elements')
  } else {
    vector.name <- deparse(substitute(b))
    sentence <- paste('Vector', vector.name, 'is longer by', -diff, 'elements')
  }
  return(sentence)
}
x <- 1:15
y <- 9:170
DescribeDifference(x, y)