#' FRED US industrial production index
#'
#' Industrial production data from the Federal Reserve Bank of St. Louis measured
#' as a seasonally-adjusted index with base year 2017. The original source of the data
#' is the release [G.17 Industrial Production and Capacity Utilization](https://www.federalreserve.gov/releases/g17/).
#'
#' @format ## `indpro_us`
#' A tibble object with 1,257 rows and 2 columns:
#' \describe{
#'   \item{date}{a character indicating the year and the month in the time series}
#'   \item{value}{a numeric indicating the value of the industrial production index for the respective month}
#' }
#' @source <https://fred.stlouisfed.org/series/INDPRO>
#' @references Board of Governors of the Federal Reserve System (US), Industrial Production: Total Index \[INDPRO\],
#' retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/INDPRO, November 5, 2023.
"indpro_us"


#' S&P 500 stock prices
#'
#' Stock market data from Yahoo! Finance for the period Dec 30, 1927--Nov 11, 2023.
#' The data is on a monthly bases with the value of the index taken at the closing prices
#' on the last working day of each month.
#'
#'@format ## `stocks_us`
#' A tibble object with 1,152 rows and 2 columns:
#' \describe{
#'   \item{date}{a date indicating the year and the last working day of the month in the time series}
#'   \item{value}{a numeric indicating the closing value of the S&P 500 index for the respective month}
#' }
#' @source <https://finance.yahoo.com/quote/^GSPC?p>
"stocks_us"
