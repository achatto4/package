
sample_mean <- function(x) {
  # Add your solution here
  mn=sum(x)/length(x)
  return(mn)
}

sample_sd <- function(x) {
  # Add your solution here
  mn=sqrt(sum((x-sample_mean(x))^2)/(length(x)-1))
  return(mn)
}


#' Calculate the Confidence interval for a regular vector
#'
#' The default is set at conf=95%
#'
#' @details This function returns the confidence intervals of a sample mean and returns a named vector of length 2, where the first value is the lower_bound, the second value is the upper_bound.
#' @param x a vector containing the data from the sample.
#' @param conf Specification of the coverage percentage for the given operation
#'
#'
#' @return
#'
#' @import stats
#' @export
#'
#' @examples
#' calculate_CI(c(1,2,3,4,5))
#'

calculate_CI <- function(x, conf = 0.95) {
  # Add your solution here
  a=sample_mean(x)-qt(conf,length(x)-1)*sample_sd(x)/sqrt(length(x))
  b=sample_mean(x)+qt(conf,length(x)-1)*sample_sd(x)/sqrt(length(x))
  conf_int=c(a,b)
  return(conf_int)
}


#' Make an object of the class "ci_class"
#'
#' This function returns an object of the class ci_class from a vector of data
#'
#' @details This function returns an object of the class "ci_class"
#' @param x a vector
#'
#' @return an object of the class ci_class
#'
#' @export
#'
#' @examples
#' ci_example=make_ci_class(c(1,2,3,4,5))
#'


make_ci_class <- function(x) {
  # if(length(x) != length(y))
  #   stop("'x' and 'y' should be the same length")

  ## Create the "polygon" object
  structure(list(object = x), class = "ci_class")
}


#' Print a ci_class object
#'
#' Print an object of the class ci_class
#'
#' @details This function prints an object of the class ci_class, including the length of the underlying vector and the class type.
#' @param x belongs to ci_class
#'
#' @return the length of the underlying vector and the class type.
#'
#' @export
#'
#' @examples
#' ci_example=make_ci_class(c(1,2,3,4,5))
#' print.ci_class(ci_example)
#'


print.ci_class <- function(x, ...) {
  cat("a sample with", length(x$object),
      "points\n")
  cat("a sample with", class(x),
      "class\n")
  invisible(x)
}





conf_int <- function(x) UseMethod("conf_int")

#' Print a CI from an object of the class ci_class
#'
#' Print a Confidence interval from an object of the class ci_class which has been createdusing the make_ci_class function.
#'
#' @details This function returns the confidence intervals of a sample mean and returns a named vector of length 2, where the first value is the lower_bound, the second value is the upper_bound.
#' @param x a vector containing the data from the sample.
#' @param conf Specification of the coverage percentage for the given operation
#'
#' @return the confidence intervals of sample mean
#'
#' @import stats
#' @export
#'
#' @examples
#' ci_example=make_ci_class(c(1,2,3,4,5))
#' calculate_CI.ci_class(ci_example)
#'

calculate_CI.ci_class <- function(x, conf = 0.95) {
  # Add your solution here
  a=sample_mean(x$object)-qt(conf,length(x$object)-1)*sample_sd(x$object)/sqrt(length(x$object))
  b=sample_mean(x$object)+qt(conf,length(x$object)-1)*sample_sd(x$object)/sqrt(length(x$object))
  conf_int=c(a,b)
  conf_int
}

c_CI=make_ci_class(c(1,2,3,4,5))
print(c_CI)
calculate_CI.ci_class(c_CI)
