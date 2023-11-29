#' Calculate the Confidence interval for a regular vector
#'
#' The default is set at conf=95%
#'
#' @details This function returns the confidence intervals of a sample mean and returns a named vector of length 2, where the first value is the lower_bound, the second value is the upper_bound.
#' @param x a vector containing the data from the sample.
#' @param conf Specification of the coverage percentage for the given operation
#'
#' @return
#'
#' @import usethis
#'
#' @examples
#' calculate_CI(c(1,2,3,4,5))
#'
library(usethis)
use_vignette("how-to-do-stuff", "How to do stuff")
use_readme_md()
