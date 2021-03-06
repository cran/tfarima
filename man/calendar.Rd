% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/um.R
\name{calendar}
\alias{calendar}
\alias{calendar.um}
\title{Calendar effects}
\usage{
calendar(um, ...)

\method{calendar}{um}(
  um,
  z = NULL,
  form = c("dif", "td"),
  easter = FALSE,
  n.ahead = 0,
  p.value = 1,
  envir = NULL,
  ...
)
}
\arguments{
\item{um}{an object of class \code{\link{um}}.}

\item{...}{additional arguments.}

\item{z}{a time series.}

\item{form}{representation for calendar effects: \code{form = td} form (1)
above, \code{form = dif} form (1).}

\item{easter}{logical. If \code{TRUE} an Easter effect is also estimated.}

\item{n.ahead}{a positive integer to extend the sample period of the
deterministic variables with \code{n.ahead} observations, which could be
necessary to forecast the output.}

\item{p.value}{estimates with a p-value greater than p.value are omitted.}

\item{envir}{environment in which the function arguments are evaluated.
If NULL the calling environment of this function will be used.}
}
\value{
An object of class "\code{\link{tfm}}".
}
\description{
\code{calendar} extends the ARIMA model \code{um} by estimating a transfer
function model with seven deterministic variables to capture the calendar
variation in a monthly time series. Two equivalent representations are
available: (1) D1, D2, ..., D7, (2) L, D1-D7, ..., D6-D7 where D1, D2, ...,
D7 are deterministic variables representing the number of Mondays, Tuesdays,
..., Sundays, L = D1 + D2 + ... + D7 is the of the month. Optionally, a
deterministic variable to estimate the Easter effect can also be included.
}
\examples{
Y <- tfarima::rsales
um1 <- um(Y, i = list(1, c(1, 12)), ma = list(1, c(1, 12)), bc = TRUE)
tfm1 <- calendar(um1)

}
\references{
W. R. Bell & S. C. Hillmer (1983) Modeling Time Series with
Calendar Variation, Journal of the American Statistical Association, 78:383,
526-534, DOI: 10.1080/01621459.1983.10478005
}
