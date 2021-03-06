% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/markerFinder.R
\name{markerFinder}
\alias{markerFinder}
\title{Find markers in a flow frame object}
\usage{
markerFinder(fcsFrame)
}
\arguments{
\item{fcsFrame}{A flow frame object.}
}
\value{
Returns a vector of markers.
}
\description{
A function that finds markers in a flow frame object.
}
\details{
If the antibody name is available, the antibody name will be
  returned, otherwise, the channel name will be returned.
}
\examples{
library(flowCore)
files=system.file("extdata","SDY420/ResultFiles/CyTOF_result",
                  package="MetaCyto")
files=list.files(files,pattern="fcs$",full.names=TRUE)[1]
fcs = read.FCS(files)
markers = markerFinder(fcs)
}
