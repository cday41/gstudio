% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ae.R
\name{Ae}
\alias{Ae}
\title{Effective Allelic Diversity}
\usage{
Ae(x, loci = NULL, ...)
}
\arguments{
\item{x}{A set of \code{locus} objects either as a vector or within a 
\code{data.frame}.}

\item{loci}{A list of loci to use if this is a \code{data.frame} (default
is NULL).  If missing, all loci are used.}

\item{...}{Ignored}
}
\value{
The effective number of alleles either as a \code{numeric} value
 or as a \code{data.frame} if multiple loci are passed.
}
\description{
This function returns the effective number of alleles in a sample.
}
\examples{
locus <- c( locus(1:2), locus(c(1,1)), locus(c(2,2)), locus(2:3) )
Ae(locus)
locus2 <- c( locus(1:2), locus(c(1,1)), locus(c(2,2)), locus(2:3) )
df <- data.frame( locus, locus2 )
Ae(df)
}
