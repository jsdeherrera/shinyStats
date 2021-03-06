% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{percRank}
\alias{percRank}
\title{Percent Rank}
\usage{
percRank(x)
}
\arguments{
\item{x}{The quantitative field from which to create the percentile rank.}
}
\value{
Returns a decimal from 0 to 1 of the percentile rank of a given
}
\description{
This is a function taken from \href{https://stats.stackexchange.com/questions/11924/computing-percentile-rank-in-r}{Stack Overflow} that creates a percentile rank of a quantitative field.  This is useful for creating cumulative and power law distributions.
}
\examples{
\dontrun{percRank(mtcars$mpg)}
}
