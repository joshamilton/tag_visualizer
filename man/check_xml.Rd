% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{check_xml}
\alias{check_xml}
\title{Check the XML file}
\usage{
check_xml(file)
}
\arguments{
\item{file}{Path to an XML file}
}
\value{
For XML files, returns nothing. For non-XML files, returns an error.
The error will get captured by the reactive server_xml_to_dataframe in app.R
and displayed to the user by Shiny.
}
\description{
Validate the file is an XML file by checking the file extension
Validate the XML file has the expected structure: \if{html}{\out{<Item>}} and \if{html}{\out{<Field>}} tags
with \if{html}{\out{<Field>}} having the attribute 'Name'
Validate the XML file has the expected \if{html}{\out{<Field>}} 'Names':
'Composer', 'Orchestra', 'Genre', 'Work', 'Year Recorded', 'Album',
'Conductor', 'Soloists'
}
\examples{
file = system.file('extdata', 'library.xml', package = 'jRiverExplorer')
check_xml(file)
\dontrun{
check_xml('tests/testthat/library.csv')
check_xml('tests/testthat/library-utils-negative-items.xml')
check_xml('tests/testthat/library-utils-negative-fields.xml')
check_xml('tests/testthat/library-utils-negative-field-names.xml')
check_xml('tests/testthat/library-utils-missing-fields.xml')
}
}
