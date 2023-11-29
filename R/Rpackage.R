#' Print a Cosine
#'
#' Print an approximate Cosine value corresponding to a real number
#'
#' @details This function returns an approximation of the Cosine value corresponding to a real number

#' @param x real number
#' @param k degree of approximation
#'
#' @return An approximation of the Cosine value corresponding to a real number
#'
#' @import ggplot2
#' @export
#'
#' @examples
#' fn_cos(0,5)
#'
fn_cos <- function(x, k) {
  # Add your solution here
  init <- 1.0
  for (i in seq(2, 2*k, by=2)) {
    term <- (x^i) / factorial(i)
    init <- init + ((-1.0)^(i/2))*term
  }
  return(init)
}

