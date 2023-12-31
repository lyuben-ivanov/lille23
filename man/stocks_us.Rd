% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{stocks_us}
\alias{stocks_us}
\title{S&P 500 stock prices}
\format{
\subsection{\code{stocks_us}}{

A tibble object with 1,152 rows and 2 columns:
\describe{
\item{date}{a date indicating the year and the last working day of the month in the time series}
\item{value}{a numeric showing the mean of the highest and lowest value of the S&P 500 index for the respective month}
}
}
}
\source{
\url{https://finance.yahoo.com/quote/^GSPC?p}
}
\usage{
stocks_us
}
\description{
Stock market data from Yahoo! Finance for the period Dec 30, 1927--Nov 11, 2023.
The data is on a monthly bases with the value of the index taken as the average of
the highest and lowest price for the respective month.
}
\keyword{datasets}
