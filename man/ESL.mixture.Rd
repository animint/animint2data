\name{ESL.mixture}
\alias{ESL.mixture}
\docType{data}
%## Example beginning page 13 of book
\title{ Mixture Example  }
\description{
  This is a simulated mixture example with 200 instances and two 
  classes. 100 members in each class.
}
\usage{data(mixture.example)}
\format{
  Named list of 8 elements:
  \describe{
    \item{x}{200 x 2 matrix of training predictors}
    \item{y}{200 x 2 matrix of class labels, 0==green, 1==red}
    \item{xnew}{matrix 6831 x 2 of lattice points in predictor space}
    \item{prob}{vector of 6831 probabilities (of class RED) at each
      latticepoint}
    \item{marginal}{marginal probability at each lattice point}
    \item{px1}{69 lattice coordinates for x.1}
    \item{px2}{99 lattice values for x.2  (69*99=6831)}
    \item{means}{20 x 2 matrix of the mixture centers, first ten for one
      class, next ten for the other}
  }
}
\keyword{datasets}
\source{
  \url{https://web.stanford.edu/~hastie/ElemStatLearn/datasets/ESL.mixture.rda}
}
