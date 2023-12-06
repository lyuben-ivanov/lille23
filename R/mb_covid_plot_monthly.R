#' Plot monthly monetary base change during the COVID-19 pandemic
#'
#' This function plots the monetary base change (as a percentage of GDP) during the years of the COVID-19 pandemic for USA and the Euro Area
#' and compares it to the baseline scenario of the Great Depression.
#' Since the pandemic started at the beginning of 2022, the change in monetary base for the years 2020, 2021, and 2022 is plotted.
#'
#' @return plot object
#' @export
#'
#' @examples
#' mb_covid_plot_monthly()

mb_covid_plot_monthly <- function() {

  # calculate monthly change in monetary base in percent of monthly GDP for USA for the years 2020-2022

  us_gdp_2020_2022_m <- gdp_us |>
    dplyr::filter(year %in% c(2020:2022)) |>
    magrittr::use_series(value) |>
    magrittr::divide_by(12) |>
    rep(each = 12)

  mb_us_change_2020_2022_m <- mb_us |>
    dplyr::filter(date >= "2019-12-01" & date <= "2022-12-01") |>
    dplyr::mutate(change = c(0, diff(value))) |>
    dplyr::filter(date != "2019-12-01") |>
    dplyr::select(-value) |>
    dplyr::mutate(value = change / us_gdp_2020_2022_m * 100) |>
    dplyr::select(value)

    # calculate monthly change in monetary base in percent of monthly GDP for the EA for the years 2020-2022

    ea_gdp_2020_2022_m <- gdp_ea |>
      dplyr::filter(year %in% c(2020:2022)) |>
      magrittr::use_series(value) |>
      magrittr::divide_by(12) |>
      rep(each = 12)

    mb_ea_change_2020_2022_m <- mb_ea |>
      dplyr::filter(date >= "2019-12-31" & date <= "2022-12-31") |>
      dplyr::mutate(change = c(0, diff(value))) |>
      dplyr::filter(date != "2019-12-31") |>
      dplyr::select(-value) |>
      dplyr::mutate(value = change / ea_gdp_2020_2022_m * 100) |>
      dplyr::select(value)

    # plot barplot

    bp_2(
      bar_1_data = mb_us_change_2020_2022_m[1:12,],
      bar_2_data = mb_ea_change_2020_2022_m[1:12,],
      y_ticks = 10,
      y_axis = TRUE,
      y_lim = c(-15, 55),
      mar_values = c(4, 3, 2, 1),
      names.arg = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
    )

    # add legend to barplot

    legend(
      x = list(x = 29, y = -27),
      legend = c("US", "EA"),
      fill = gray.colors(2),
      border = FALSE,
      bty = "n",
      cex = 0.8,
      ncol = 2,
      xpd = TRUE
    )

}
