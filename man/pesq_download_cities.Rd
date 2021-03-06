% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download.R
\name{pesq_download_cities}
\alias{pesq_download_cities}
\title{Downloads pesqEle files}
\usage{
pesq_download_cities(cities, path = "data-raw/html")
}
\arguments{
\item{cities}{\code{tibble} returned from \code{pesq_download_cities} or \code{cities}.}

\item{path}{directory to save HTML files.

For example, consider the city of Rio de Janeiro (code 60011).
If one searches this city in pesqEle platform,
she will get 47 results. This function will save 48 files,
where the first one is \code{RJ_60011.html} and the others are
\code{RJ_60011_xxx}, \code{xxx} from 001 to 047 indicating
each individual result.}
}
\value{
\code{tibble} containing download status: 'OK' if it ran well,
'ja foi' if the file already exists and 'erro' if there was an error.
}
\description{
Downloads HTML files from
\href{http://inter01.tse.jus.br/pesqele-publico/app/pesquisa/listarEstatisticos.xhtml}{TSE pesqEle platform}.
Receives a \code{tibble} containing cities and saves HTML files for each city.
When the search for one city returns one or more results,
this function will save one HTML file for each result plus the list of results.
Otherwise, it will save just one HTML file showing zero results.
}
