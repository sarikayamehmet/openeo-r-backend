% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Server-class.R
\docType{data}
\name{OpenEOServer}
\alias{OpenEOServer}
\title{OpenEOServer}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
OpenEOServer
}
\description{
This is the server class, wich has different variables regarding the storage paths, as well as the loaded processes, products and
jobs.
}
\section{Fields}{

\describe{
\item{\code{api.version}}{The current api version used}

\item{\code{data.path}}{The filesystem path where to find the datasets}

\item{\code{workspaces.path}}{The filesystem path where user data and jobs are stored}

\item{\code{api.port}}{The port where the plumber webservice is working under}

\item{\code{processes}}{This field is also managed during runtime. Here all template processes are listed}

\item{\code{data}}{A list of products offered by the service which is managed at runtime.}
}}

\keyword{datasets}
