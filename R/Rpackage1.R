#' Print a Sine
#'
#' Print an approximate Sine value corresponding to a real number
#'
#' @details This function returns the Sine value corresponding to a real number

#' @param x real number
#' @param k degree of approximation
#'
#' @return An approximation of the Sine value corresponding to a real number
#'
#' @import ggplot2
#' @export
#'
#' @examples
#' fun_sin(3.1415/2,5)
#'

fun_sin <- function(x, k) {
  # Add your solution here
  init=0
  for (i in seq(0, 2*k, by=2)) {
    term <- x^(i+1) / factorial(i+1)
    init <- init + ((-1.0)^(i/2))*term
  }
  return(init)
}
