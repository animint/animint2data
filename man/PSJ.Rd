\name{PSJ}
\alias{PSJ}
\docType{data}
\title{
  Data computed using PeakSegJoint package
}
\description{
  Peak detection was performed on several samples in one genomic region,
  using several different problem sizes.
}
\usage{data("PSJ")}
\format{
  Named list of 10 items:
  \describe{
    \item[problem.labels]{data frame to draw a text label for each problem size}
    \item[problems]{data frame to draw a segment for each peak detection problem
      region}
    \item[filled.regions]{data frame of labeled regions indicating presence/absence of
      peak start and end positions}
    \item[coverage]{data along which we run peak detection}
    \item[first]{named list used to indicate first selection to display}
    \item[modelSelection.by.problem]{list of data frames, one element
      per peak detection problem, indicating error rates for different
      penalty/lambda values}
    \item[error.total.chunk]{data frame of chunk total error per problem
      size}
    \item[error.total.all]{data frame of all total error per problem size}
}
\source{
  \url{https://github.com/tdhock/animint-examples/blob/master/etc/PSJ.R}
}
\keyword{datasets}
