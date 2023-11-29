
# biostat777-project2-achatto4
# Anaghpackage

<!-- badges: start -->

<!-- badges: end -->

The goal of Anaghpackage is to create a S3 class based functionality to provide the confidence interval of the sample mean of any data and also find the sine and cosine of a real number using a single function.

The package is created by Anagh Chattopadhyay.

The list of exported functions are- 

1) calculate_CI.ci_class: This function is designed to calculate confidence intervals for the statistical measure of sample mean. It operates within a S3 class, an object-oriented structure in R called ci_class.

2) make_ci_class: This function is responsible for creating an instance of a class called ci_class that represents confidence intervals. It sets up the necessary components and attributes needed for working with confidence intervals.

3) print.ci_class: This function is used to print method associated with the aforementioned class, specifically for objects of the type ci_class. It controls how objects of this class are displayed when using the print function in R. It specifies the number of elements in the object and its class.

4) calculate_CI: It is a general method used to calculate confidence intervals.

5) fun_sin: It's a custom implementation of the standard sin function in R.

6) fn_cos: Similar to fun_sin, it represents a custom implementation of the standard cos function in R.

## Installation

You can install the development version of Anaghpackage by cloning the repository,and installing it. 

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Anaghpackage)
## basic example code
> vect=c(1:10)
> c_CI=make_ci_class(vect)
> print(c_CI)
a sample with 10 points
a sample with ci_class class
> calculate_CI.ci_class(c_CI)
[1] 3.744928 7.255072
```

