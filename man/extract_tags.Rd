% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{extract_tags}
\alias{extract_tags}
\title{Extract fields and values for each item}
\usage{
extract_tags(item)
}
\arguments{
\item{item}{An XML node containing the item to extract}
}
\value{
A named vector containing the fields and values for the item
}
\description{
Extract fields and values for each item
}
\examples{
file = system.file('extdata', 'library.xml', package = 'jRiverExplorer')
item = xml2::read_xml(file) \%>\% xml2::xml_find_all('//Item') \%>\% .[[1]]
extract_tags(item)
}
