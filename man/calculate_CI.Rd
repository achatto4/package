% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rpackage2.R
\name{calculate_CI}
\alias{calculate_CI}
\title{Calculate the Confidence interval for a regular vector}
\usage{
calculate_CI(x, conf = 0.95)
}
\arguments{
\item{x}{a vector containing the data from the sample.}

\item{conf}{Specification of the coverage percentage for the given operation}
}
\description{
The default is set at conf=95\%
}
\details{
This function returns the confidence intervals of a sample mean and returns a named vector of length 2, where the first value is the lower_bound, the second value is the upper_bound.
}
\examples{
calculate_CI(c(1,2,3,4,5))

}
