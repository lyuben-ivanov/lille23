#' Plot monetary base change during the Great Recession
#'
#' This function plots the change in the monetary base (as a percentage of the respective GDP) during the years of the Great Recession for USA and the Euro Area
#' and compares it to the baseline scenario of the Great Depression.
#' Since the Great Recession started at the end of 2007/beginning of 2008, the change in the monetary base for the years 2008, 2009, and 2010 is plotted.
#'
#' @return plot object
#' @export
#'
#' @examples
#' mb_gr_plot()
#'
mb_gr_plot <- function() {

  # calculate change in monetary base in percent of GDP for USA for the years 1930-1932

  us_gdp_1930_1932 <- gdp_us |>
    dplyr::filter(year %in% c(1930:1932)) |>
    dplyr::select(value)

  mb_us_change_1930_1932 <- mb_us |>
    dplyr::filter(date %in% c("1929-12-01", "1930-12-01", "1931-12-01", "1932-12-01")) |>
    dplyr::mutate(change = c(0, diff(value))) |>
    dplyr::filter(date != "1929-12-01") |>
    dplyr::select(-value) |>
    dplyr::mutate(value = change / us_gdp_1930_1932 * 100) |>
    dplyr::select(value)

  # calculate change in monetary base in percent of GDP for USA for the years 2008-2010

  us_gdp_2008_2010 <- gdp_us |>
    dplyr::filter(year %in% c(2008:2010)) |>
    dplyr::select(value)

  mb_us_change_2008_2010 <- mb_us |>
    dplyr::filter(date %in% c("2007-12-01", "2008-12-01", "2009-12-01", "2010-12-01")) |>
    dplyr::mutate(change = c(0, diff(value))) |>
    dplyr::filter(date != "2007-12-01") |>
    dplyr::select(-value) |>
    dplyr::mutate(value = change / us_gdp_2008_2010 * 100) |>
    dplyr::select(value)

  # calculate change in monetary base in percent of GDP for the Euro Area for the years 2008-2010

  ea_gdp_2008_2010 <- gdp_ea |>
    dplyr::filter(year %in% c(2008:2010)) |>
    dplyr::select(value)

  mb_ea_change_2008_2010 <- mb_ea |>
    dplyr::filter(date %in% c("2007-12-31", "2008-12-31", "2009-12-31", "2010-12-31")) |>
    dplyr::mutate(change = c(0, diff(value))) |>
    dplyr::filter(date != "2007-12-31") |>
    dplyr::select(-value) |>
    dplyr::mutate(value = change / ea_gdp_2008_2010 * 100) |>
    dplyr::select(value)

  # create barplot

  bp(
    bar_1_data = mb_us_change_1930_1932,
    bar_2_data = mb_us_change_2008_2010,
    bar_3_data = mb_ea_change_2008_2010,
    y_ticks = 5,
    y_axis = TRUE,
    y_lim = c(-5, 16),
    mar_values = c(3.5, 3, 2, 1),
    names.arg = c("t+1", "t+2", "t+3")
  )

}
