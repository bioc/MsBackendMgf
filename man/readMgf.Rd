% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-mgf.R
\name{readMgf}
\alias{readMgf}
\title{Reading MGF files}
\usage{
readMgf(f, msLevel = 2L, mapping = spectraVariableMapping(MsBackendMgf()), ...)
}
\arguments{
\item{f}{\code{character(1)} with the path to an mgf file.}

\item{msLevel}{\code{numeric(1)} with the MS level. Default is 2.}

\item{mapping}{named \code{character} vector to rename mgf fields to spectra
variables.}

\item{...}{Additional parameters, currently ignored.}
}
\value{
A \code{DataFrame} with each row containing the data from one spectrum
in the MGF file. m/z and intensity values are available in columns \code{"mz"}
and \code{"intensity"} in a list representation.
}
\description{
The \code{readMgf} function imports the data from a file in MGF format reading
all specified fields and returning the data as a \code{\link[=DataFrame]{DataFrame()}}.
}
\examples{

fls <- dir(system.file("extdata", package = "MsBackendMgf"),
    full.names = TRUE, pattern = "mgf$")[1L]

readMgf(fls)
}
\author{
Laurent Gatto, Johannes Rainer
}
