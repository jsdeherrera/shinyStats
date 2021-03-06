% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{sBG.est}
\alias{sBG.est}
\title{Shifted Beta Gamma Model Parameter Estimates}
\usage{
sBG.est(active.vec, lost.vec)
}
\arguments{
\item{active.vec}{Numeric vector representing active members}

\item{lost.vec}{Numeric vector representing lost members}
}
\value{
Returns a vector of parameters (alpha and beta)
}
\description{
This function estimates parameters for the shifed beta gamma distribution (often used in survival curves)
and used by the \code{\link{survivalCurve}} function.
}
\examples{
\dontrun{
library(dplyr)
library(titanic)
titanic::titanic_train \%>\%
mutate(Deceased = ifelse(Survived == 1,0,1)) \%>\%
group_by(Age = round(Age,0)) \%>\%
summarise(Survived = sum(Survived), Deceased = sum(Deceased)) \%>\% {
sBG.est(
.$Survived[2:nrow(.)],
.$Deceased[2:nrow(.)]
)$par}
}
}
