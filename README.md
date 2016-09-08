# Module 6: Introduction to Functions

## Overview
In this module, we'll explore three different approaches to using more advanced capabilities in R. After considering a function in an abstract sense, we'll dive into using built-in R functions, loading R packages, and writing our own functions.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

**Contents**

- [Resources](#resources)
- [What are functions?](#what-are-functions)
- [Built-in R Functions](#built-in-r-functions)
- [Loading Functions](#loading-functions)
- [Writing functions](#writing-functions)
- [Conditional Statements](#conditional-statements)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Resources
- [Function Cheatsheet](https://cran.r-project.org/doc/contrib/Short-refcard.pdf)


## What are functions?
In a broad sense, a **function** is a task that you may want to perform one or more times throughout a program. They provide a way of encapsulating multiple instructions into an aggregate capability that is useful in a variety of different contexts. Depending on the function (and the programming language), functions may have a varying number of **inputs** and **outputs**.

Let's imagine a function (a series of lines of code) that could determine the largest number in a set of numbers. That function's **input** would be the set of numbers, and the **output** would be the largest number. In R, a function only outputs a single-object (i.e., variable), though that object may be of any type (more on this later). R functions are just like other object (variables) in R, and are referenced by name. As in many programming languages, the function is executed by placing function inputs (also referred to as **arguments** or **parameters**) inside parentheses following the function name:

```r
# Execute the `min` function to determine the minimum number of 10, 3, and 7/5
min(1, 8/6, 7/5)  # 1
```

## Built-in R Functions
The R software program comes with a number of functions built into the language. In the example above, we used the `min` function to determine which number was smallest. Each argument to that function was a number, and the output was the smallest number (`1`). Here's a _very_ small table of functions to experiment with:

| Function Name  | Description | Example |
| ------------- | ------------- |  ------------- |
| `c(a,b, ...)`       | Concatenate multiple items into a vector | `c(1,2)` # returns 1,2 |
| `length(a)`  | Determine vector length | `length(c(1,2))` # returns 2 |
| `paste(a, b, ...)`  | Concatenate characters into one value | `paste("Hi", "there")` # returns "hi there" |
| `length(a)`  | Determine vector length | `length(c(1,2))` # returns 2 |
| `seq(a, b)`  | Return a sequence from a to b  | `seq(1,5)` # returns 1, 2, 3, 4, 5 |
| `sum(a, b, ...)`  | Calculates the sum of all input values  | `sum(1,5)` # returns 6|
| `tolower(a)`  | Returns the characters in lowercase  | `tolower("Hi there")` # returns "hi there"|

To learn about function inputs/outputs, see the documentation of that function by entering `?FunctionName` into your RStudio console.

## Loading Functions
**Packages** are additional sets of R functions that are written and published by the R community. Because many R users encounter the same data management / data analysis challenges, programmers are able to benefit from the work of others (this is the amazing thing about the open-source community). R packages **do not** ship with the R software by default, and need to be downloaded (once) and loaded into your program each time you with to use them. While this may seem cumbersome, the R program would be huge if you had to download _all_ packages to install it.

Luckily, it is quite simple to install and load R packages from within R! To do so, you'll need to use the _built-in_ R functions `install.packages` and `library`. Here's an example of installing and loading the `stringr` package.

```r
# Download/install the `stringr` package. Only needs to be done once on your machine
install.packages("stringr")
library(stringr)
```

When you load a package, you may receive a warning message about the package being built under a previous version of R. In all likelihood, this shouldn't cause a problem, but you should pay attention to the details of the messages, and keep them in mind (especially if you start getting unexpected errors). After loading the package with the `library` function, you have access to functions that were written as part of that package.

## Writing functions
Even more exciting than loading other peoples' functions is writing your own. Any time that you have a task that you may repeat throughout a script, it's good practice to write a function to perform that task. This will limit repetition and reduce the likelihood of error.

Similarly to creating any other variable, you use the assignment operator (`<-`) to store a function in a variable. It's [best practice ](https://google.github.io/styleguide/Rguide.xml#functiondefinition) assign functions names in CamelCase without any periods(`.`) in the name. This helps distinguish functions from other variables. Let's take a look a simple function to understand it's anatomy:

```r
# Write a function to add two numbers together
AddNumbers <- function(a, b) {
  # Perform tasks in here
  answer <- a + b
  return (answer)
}

# Execute your AddNumbers function with the values 2 and 6
AddNumbers(2,6)  # 8
```
When you're defining a function, you specify the **arguments** that the function will accept within a the first set of parentheses (in the case, `a` and `b`). Note, we could have called `a` and `b` by any names we wanted: the important point is that those are the values that are used throughout the internal body of the function.

Within your curly braces (`{  }`) you write out all of the tasks your function will perform. Within this section, your arguments (`a` and `b`), will assume the values passed into the function upon execution.

Finally, your function **returns** (outputs) a single value, which you should put in parentheses after the word `return`.

To execute the function, we simply passed in two parameters: `2` and `6`. When the function executes, it runs each line in the body of the function, but replaces the function arguments (`a` and `b`) with the values that were put into the function (`2` and `6`).

## Conditional Statements
In R, as in other programming languages, you often want to take different actions given a set of conditions. Conditional statements allow us to isolate chunks of code to execution given different contexts, which is often valuable within functions. In an abstract sense, an conditional statement is saying:

```
if(SOMETHING IS TRUE) {
  # DO EVERYTHING IN HERE
} else {
  # OTHERWISE, DO EVERYTHING IN HERE
}
```
In order to execute a conditional statement, the value inside of the `if()` parentheses must return a **boolean** value (or must resolve to a boolean value). Note, you can provide multiple different conditions if you use the `elseif()` syntax throughout this process:

```
if(SOMETHING IS TRUE) {
  # DO EVERYTHING IN HERE
} elseif(SOMETHING ELSE IS TRUE) {
  # DO EVERYTHING IN HERE
} else {
  # BY DEFAULT, DO EVERYTHING IN HERE
}
```
