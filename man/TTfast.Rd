% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{TTfast}
\alias{TTfast}
\title{TTfast}
\usage{
TTfast(X, Y, computeDOF = TRUE, varEqual = TRUE)
}
\arguments{
\item{X}{binary matrix of voxels (columns) for all
subjects (rows).}

\item{Y}{matrix of behavioral scores of same size as X
or a matrix with a single column.}

\item{computeDOF}{(default=true) chooses whether to compute
degrees of freedom. Set to false to save time during
permutations.}

\item{varEqual}{(default=true) chooses whether to compute
Student t-scores (true) or Welch d-scores (false). The
only difference is the assumption on variance which for
t-scores must be satisfied. This assumption is often
violated in some voxels, and the use of Welch
(varEqual=false) is recommended for more accurate results.}
}
\value{
List with two vectors:
\itemize{
\item\code{statistic} - Student T or Welch D
\item\code{df} - degrees of freedom
}
}
\description{
Compiled fast t-tests on matrices. Takes a binary matrix
X with zero and non-zero values, and a matrix Y of
continuous values. Computes the t-test on each Y column
using the respective X column to define the two groups.
If Y is a matrix with one column, that column is used
to test with grouping derived from every column in X.
This function is used in LESYMAP with a binarized X
matrix derived from lesioned voxels in the brain.
}
\examples{
set.seed(1234)
lesmat = matrix(rbinom(60,1,0.2), ncol=2)
set.seed(12345)
behavior = cbind( rnorm(30) )
set.seed(123456)
behavior = cbind ( behavior, rnorm(30) )
test = LESYMAP::TTfast(lesmat, behavior)
test$statistic[,1] # -2.359317  1.040766

}
\author{
Dorian Pustina
}
