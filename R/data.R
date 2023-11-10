#' FRED US industrial production index
#'
#' Industrial production data from the Federal Reserve Bank of St. Louis measured
#' as a seasonally-adjusted index with base year 2017. The original source of the data
#' is the release [G.17 Industrial Production and Capacity Utilization](https://www.federalreserve.gov/releases/g17/).
#'
#' @format ## `indpro`
#' A tibble object with 1,257 rows and 2 columns:
#' \describe{
#'   \item{date}{a character indicating the year and the month in the time series}
#'   \item{value}{a numeric indicating the value of the industrial production index for the respective month}
#' }
#' @source <https://fred.stlouisfed.org/series/INDPRO>
#' @references Board of Governors of the Federal Reserve System (US), Industrial Production: Total Index \[INDPRO\],
#' retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/INDPRO, November 5, 2023.
"indpro"
