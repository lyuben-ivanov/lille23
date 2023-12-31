% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{emp_us}
\alias{emp_us}
\title{US employment}
\format{
\subsection{\code{emp_us}}{

A tibble object with 80 observations of 2 variables:
\describe{
\item{date}{a numeric indicating the year of the observation}
\item{value}{a numeric indicating the employed population in USA for the respective year (in thousands of persons)}
}
}
}
\source{
\url{https://fred.stlouisfed.org/series/A0871BUSA175NNBR#}

\url{https://fred.stlouisfed.org/series/LFEMTTTTUSA647S}
}
\usage{
emp_us
}
\description{
US employment annual data from the NBER and from OECD, measured in thousands of persons.
The data covers the period from year 1927 to year 1943 (Source: NBER) and from year 1960 to year 2022 (Source: OECD) since it is taken from different sources (please visit the links below for more information).
}
\references{
National Bureau of Economic Research, Total Employment for United States [A0871BUSA175NNBR], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/A0871BUSA175NNBR, November 23, 2023.

Organization for Economic Co-operation and Development, Employed Population: Aged 15 and over: All Persons for United States [LFEMTTTTUSA647S], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/LFEMTTTTUSA647S, November 23, 2023.
}
\keyword{datasets}
