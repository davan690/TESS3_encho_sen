% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/variogram.R
\name{CalculateEmpiricalSemivariogram}
\alias{CalculateEmpiricalSemivariogram}
\title{Calculate empirical semi-variance.}
\usage{
CalculateEmpiricalSemivariogram(Dz, Dx, breaks = "FD", na.rm = TRUE)
}
\arguments{
\item{Dz}{Variable distance matrix.}

\item{Dx}{Spatial distance matrix.}

\item{breaks}{Same parameter that in hist R base function.}

\item{na.rm}{A logical indicating whether missing values should be removed.}
}
\value{
Semi-variance.
}
\description{
Calculate empirical semi-variance.
}
