#' US industrial production index
#'
#' Industrial production monhtly data from the Federal Reserve Bank of St. Louis measured
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

#' EA19 industrial production index
#'
#' Industrial production monthly data for the Euro Area (19 countries) from the OECD measured
#' as a seasonally-adjusted index with base year 2015. The original source of the data
#' is the release [Main Economic Indicators](http://www.oecd-ilibrary.org/economics/data/main-economic-indicators/main-economic-indicators-complete-database_data-00052-en).
#'
#' @format ## `indpro_ea`
#' A tibble object with 577 rows and 2 columns:
#' \describe{
#'   \item{date}{a date indicating the year and the month in the time series}
#'   \item{value}{a numeric indicating the value of the industrial production index for the respective month}
#' }
#' @source <https://fred.stlouisfed.org/series/EA19PRINTO01IXOBSAM>
#' @references Organization for Economic Co-operation and Development, Production: Industry: Total Industry Excluding Construction for Euro Area (19 Countries) \[EA19PRINTO01IXOBSAM\], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/EA19PRINTO01IXOBSAM, November 13, 2023.
"indpro_ea"


#' S&P 500 stock prices
#'
#' Stock market data from Yahoo! Finance for the period Dec 30, 1927--Nov 11, 2023.
#' The data is on a monthly bases with the value of the index taken as the average of
#' the highest and lowest price for the respective month.
#'
#'@format ## `stocks_us`
#' A tibble object with 1,152 rows and 2 columns:
#' \describe{
#'   \item{date}{a date indicating the year and the last working day of the month in the time series}
#'   \item{value}{a numeric showing the mean of the highest and lowest value of the S&P 500 index for the respective month}
#' }
#' @source <https://finance.yahoo.com/quote/^GSPC?p>
"stocks_us"

#' EA19 broad stock index
#'
#' Stock prices monthly data for the Euro Area (19 countries) from the OECD measured
#' as a index with base year 2015. The original source of the data
#' is the release [Main Economic Indicators](http://www.oecd-ilibrary.org/economics/data/main-economic-indicators/main-economic-indicators-complete-database_data-00052-en).
#'
#' @format ## `stocks_ea`
#' A tibble object with 442 rows and 2 columns:
#' \describe{
#'   \item{date}{a date indicating the year and the month in the time series}
#'   \item{value}{a numeric indicating the value of the broad share index for the respective month}
#' }
#' @source <https://fred.stlouisfed.org/series/SPASTT01EZM661N>
#' @references Organization for Economic Co-operation and Development, Share Prices: All Shares/Broad: Total for Euro Area (19 Countries) [SPASTT01EZM661N], retrieved from FRED, Federal Reserve Bank of St. Louis; <https://fred.stlouisfed.org/series/SPASTT01EZM661N>, November 17, 2023.
"stocks_ea"
