#' Plot government budget balance during the COVID-19 pandemic
#'
#' This function plots the government budget balance during the years of the COVID-19 pandemic for USA and the Euro Area
#' and compares it to the baseline scenario of the Great Depression.
#' Since the pandemic started at the beginning of 2022, the budget balance for the years 2020, 2021, and 2022 is plotted.
#'
#' @return plot object
#' @export
#'
#' @examples
#'
#' bb_covid_plot()
bb_covid_plot <- function() {

  bar_1 <- bb_us |>
    dplyr::filter (year %in% c(1930:1932)) |>
    dplyr::select(value)

  bar_2 <- bb_us |>
    dplyr::filter (year %in% c(2020:2022)) |>
    dplyr::select(value)

  bar_3 <- bb_ea |>
    dplyr::filter (year %in% c(2020:2022)) |>
    dplyr::select(value)

  bp(
    bar_1_data = bar_1,
    bar_2_data = bar_2,
    bar_3_data = bar_3,
    y_ticks = 5,
    y_axis = TRUE,
    y_lim = c(-15, 1),
    mar_values = c(3, 4, 2, 1),
    names.arg = c("t", "t+1", "t+2")
  )

  # add legend to barplot
  legend(
    x = list(x = 9.2, y = -12),
    legend = c("Baseline", "USA", "Euro Area"),
    fill = gray.colors(3),
    border = F,
    bty = "n",
    cex = 1.25
  )
}
