% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tfm.R
\name{tsdiag.tfm}
\alias{tsdiag.tfm}
\title{Diagnostic Plots for Time-Series Fits Description}
\usage{
\method{tsdiag}{tfm}(object, gof.lag = 10, ...)
}
\arguments{
\item{object}{a fitted \code{um} object.}

\item{gof.lag}{the maximum number of lags for a Portmanteau goodness-of-fit test}

\item{...}{additional arguments.}
}
\description{
\code{tsdiag.tfm} is a wrap of the stats::tsdiag function.
}
\seealso{
stats::tsdiag.
}
