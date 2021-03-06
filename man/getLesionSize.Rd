% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getLesionSize.R
\name{getLesionSize}
\alias{getLesionSize}
\title{Lesion size computation}
\usage{
getLesionSize(lesions.list, showInfo = TRUE)
}
\arguments{
\item{lesions.list}{List of antsImages or vector of filenames.
It is assumed that images are binary (0/1).}

\item{showInfo}{logical show or not informations/warnings}
}
\value{
vector of lesion sizes in mm3
}
\description{
Compute lesion sizes from a list of antsImages.
}
\author{
Dorian Pustina
}
