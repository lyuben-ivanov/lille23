#' Plot employment change during the COVID-19 pandemic
#'
#' This function plots the change in employment compared to the base year (in percents) during the years of the COVID-19 pandemic for USA and the Euro Area
#' and compares it to the baseline scenario of the Great Depression.
#' Since the pandemic started at the beginning of 2022, the change in employment for the years 2020, 2021, and 2022 is plotted.
#'
#' @return plot object
#' @export
#'
#' @examples
#' emp_covid_plot()

emp_covid_plot <- function() {

  emp_us_1929_1930 <- emp_us |>
    dplyr::filter(date %in% c("1930-01-01", "1931-01-01", "1932-01-01")) |>
    magrittr::use_series(value) |>
    magrittr::divide_by(emp_us[[3, 2]]) |>
    magrittr::subtract(1) |>
    magrittr::multiply_by(100)

  emp_us_2020_2022 <- emp_us |>
    dplyr::filter(date %in% c("2020-01-01", "2021-01-01", "2022-01-01")) |>
    magrittr::use_series(value) |>
    magrittr::divide_by(emp_us[[77, 2]]) |>
    magrittr::subtract(1) |>
    magrittr::multiply_by(100)

  emp_ea_2020_2022 <- emp_ea |>
    dplyr::filter(date %in% c("2020-01-01", "2021-01-01", "2022-01-01")) |>
    magrittr::use_series(value) |>
    magrittr::divide_by(emp_ea[[22, 2]]) |>
    magrittr::subtract(1) |>
    magrittr::multiply_by(100)

  # create barplot

  bp(
    bar_1_data = emp_us_1929_1930,
    bar_2_data = emp_us_2020_2022,
    bar_3_data = emp_ea_2020_2022,
    y_ticks = 5,
    y_axis = FALSE,
    y_lim = c(-20, 5),
    mar_values = c(3.5, 3, 2, 1),
    names.arg = c("t", "t+1", "t+2")
  )

  # add legend to barplot

  legend(
    x = list(x = 5, y = -24.1),
    legend = c("GD", "US", "EA"),
    fill = gray.colors(3),
    border = FALSE,
    bty = "n",
    cex = 0.8,
    ncol = 3,
    xpd = TRUE
  )

}
