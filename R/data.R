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
#' as a seasonally-adjusted index with base year 2015. The data covers the period from Jul 1975 to Jul 2023. The original source of the data
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
#' as a index with base year 2015. The data cover the period from Dec 1986 to Sep 2023. The original source of the data
#' is the release [Main Economic Indicators](http://www.oecd-ilibrary.org/economics/data/main-economic-indicators/main-economic-indicators-complete-database_data-00052-en).
#'
#' @format ## `stocks_ea`
#' A tibble object with 442 rows and 2 columns:
#' \describe{
#'   \item{date}{a date indicating the year and the month of the observation}
#'   \item{value}{a numeric indicating the value of the broad share index for the respective month}
#' }
#' @source <https://fred.stlouisfed.org/series/SPASTT01EZM661N>
#' @references Organization for Economic Co-operation and Development, Share Prices: All Shares/Broad: Total for Euro Area (19 Countries) \[SPASTT01EZM661N\], retrieved from FRED, Federal Reserve Bank of St. Louis; <https://fred.stlouisfed.org/series/SPASTT01EZM661N>, November 17, 2023.
"stocks_ea"

#' US monetary base
#'
#' Monetary base monthly data from the Federal Reserve Bank of St. Louis measured
#' in billions of US dollars. The data cover the period from Jan 1918 to September 2023 and is not seasonally adjusted. The monetary base equals total reserve balances maintained by US banks plus currency in circulation.
#' It is created by merging two datasets from the Federal Reserve Bank of St. Louis:
#' [AMBNS](https://fred.stlouisfed.org/series/AMBNS) and [BOGMBASE](https://fred.stlouisfed.org/series/BOGMBASE).
#' The first dataset ends on Nov 2019 and the second one is added to the time series from Dec 2019 to create a complete data set.
#'
#' @format ## `mb_us`
#' A tibble object with 1269 observations of 2 variables:
#' \describe{
#'   \item{date}{a date indicating the year and the month of the observation}
#'   \item{value}{a numeric indicating the value of the monetary base for the respective month (in billions of US dollars)}
#' }
#' @source <https://fred.stlouisfed.org/series/BOGMBASE>
#' @source <https://fred.stlouisfed.org/series/AMBNS>
#' @references Board of Governors of the Federal Reserve System (US), Monetary Base; Total \[BOGMBASE\], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/BOGMBASE, November 18, 2023.
#' @references Federal Reserve Bank of St. Louis, St. Louis Adjusted Monetary Base (DISCONTINUED) \[AMBNS\], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/AMBNS, November 18, 2023.
"mb_us"

#' US budget balance as a percentage of GDP
#'
#' US budget balance annual data from the Federal Reserve Bank of St. Louis measured as a percentage of GDP.
#' The data covers the period from 1929 to 2022. Federal Surplus or Deficit \[-\] as Percent of Gross Domestic Product (FYFSGDA188S) was first constructed by the Federal Reserve Bank of St. Louis in October 2012. It is calculated using Federal Surplus or Deficit \[-\] (FYFSD) and Gross Domestic Product (GDPA):
#'
#' FYFSGDA188S = ((FYFSD/1000)/GDPA)*100
#'
#' FYFSD/1000 transforms FYFSD from millions of dollars to billions of dollars.
#'
#' @format ## `bb_us`
#' A tibble object with 94 observations of 2 variables:
#' \describe{
#'   \item{year}{a numeric indicating the year of the observation}
#'   \item{value}{a numeric indicating the value of federal budget for the US for the respective year}
#' }
#' @source <https://fred.stlouisfed.org/series/FYFSGDA188S>
#' @references Federal Reserve Bank of St. Louis, Federal Surplus or Deficit [-] as Percent of Gross Domestic Product \[FYFSGDA188S\], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/FYFSGDA188S, November 18, 2023.
"bb_us"

#' Euro Area budget balance as a percentage of GDP
#'
#' Euro Area budget balance annual data from the International Monetary Fund and Eurostat measured as a percentage of GDP of the Euro Area for the respective year.
#'
#'Net lending (+)/ borrowing (-) is calculated as revenue minus total expenditure. This is a core Government Finance Statistics (GFS) balance that measures the extent to which general government is either putting financial resources at the disposal of other sectors in the economy and nonresidents (net lending), or utilizing the financial resources generated by other sectors and nonresidents (net borrowing). This balance may be viewed as an indicator of the financial impact of general government activity on the rest of the economy and nonresidents (Government Finance Statistics Manual 2001 (GFSM 2001), paragraph 4.17).
#'
#' @format ## `bb_ea`
#' A tibble object with 30 observations of 2 variables:
#' \describe{
#'  \item{year}{a numeric indicating the year of the observation}
#'  \item{value}{a numeric indicating the value of the budget balance for the Euro Area for the respective year (as a percentage of GDP)}
#'  }
#' @source <https://fred.stlouisfed.org/series/GGNLBAEZA188N>
#' @source <https://ec.europa.eu/eurostat/databrowser/bookmark/72101904-17ca-46c3-accb-1d847055ca01?lang=en>
#' @references International Monetary Fund, General government net lending/borrowing for Euro Area \[GGNLBAEZA188N\], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/GGNLBAEZA188N, November 17, 2023.
#' @references Government deficit/surplus, debt and associated data \[gov_10dd_edpt1\] (2021), Eurostat, https://ec.europa.eu/eurostat/databrowser/bookmark/72101904-17ca-46c3-accb-1d847055ca01?lang=en, November 17, 2023.
"bb_ea"
