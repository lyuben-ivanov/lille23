#' Plot monetary base change during the COVID-19 pandemic
#'
#' This function plots the monetary base change (as a percentage of GDP) during the years of the COVID-19 pandemic for USA and the Euro Area
#' and compares it to the baseline scenario of the Great Depression.
#' Since the pandemic started at the beginning of 2022, the change in monetary base for the years 2020, 2021, and 2022 is plotted.
#'
#' @return plot object
#' @export
#'
#' @examples
#' mb_covid_plot()

mb_covid_plot <- function() {

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

  # calculate change in monetary base in percent of GDP for USA for the years 2020-2022

  us_gdp_2020_2022 <- gdp_us |>
    dplyr::filter(year %in% c(2020:2022)) |>
    dplyr::select(value)

  mb_us_change_2020_2022 <- mb_us |>
    dplyr::filter(date %in% c("2019-12-01", "2020-12-01", "2021-12-01", "2022-12-01")) |>
    dplyr::mutate(change = c(0, diff(value))) |>
    dplyr::filter(date != "2019-12-01") |>
    dplyr::select(-value) |>
    dplyr::mutate(value = change / us_gdp_2020_2022 * 100) |>
    dplyr::select(value)

  # calculate change in monetary base in percent of GDP for the Euro Area for the years 2020-2022

  ea_gdp_2020_2022 <- gdp_ea |>
    dplyr::filter(year %in% c(2020:2022)) |>
    dplyr::select(value)

  mb_ea_change_2020_2022 <- mb_ea |>
    dplyr::filter(date %in% c("2019-12-31", "2020-12-31", "2021-12-31", "2022-12-31")) |>
    dplyr::mutate(change = c(0, diff(value))) |>
    dplyr::filter(date != "2019-12-31") |>
    dplyr::select(-value) |>
    dplyr::mutate(value = change / ea_gdp_2020_2022 * 100) |>
    dplyr::select(value)

  # plot barplot

  bp(
    bar_1_data = mb_us_change_1930_1932,
    bar_2_data = mb_us_change_2020_2022,
    bar_3_data = mb_ea_change_2020_2022,
    y_ticks = 5,
    y_axis = TRUE,
    y_lim = c(-5, 15),
    mar_values = c(3, 4, 2, 1),
    names.arg = c("t", "t+1", "t+2")
  )

  # add legend to barplot

  legend(
    x = list(x = 9.2, y = 15),
    legend = c("Baseline", "USA", "Euro Area"),
    fill = gray.colors(3),
    border = F,
    bty = "n",
    cex = 1.25
  )

}
