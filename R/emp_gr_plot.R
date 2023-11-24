#' Plot employment change during the Great Recession
#'
#' This function plots the change in employment compared to the base year (in percents) during the years of the Great Recession for USA and the Euro Area
#' and compares it to the baseline scenario of the Great Depression.
#' Since the Great Recession started at the end of 2007/beginning of 2008, the change in employment for the years 2008, 2009, and 2010 is plotted.
#'
#' @return plot object
#' @export
#'
#' @examples
#' emp_gr_plot()
#'
emp_gr_plot <- function() {

  emp_us_1929_1930 <- emp_us |>
    dplyr::filter(date %in% c("1930-01-01", "1931-01-01", "1932-01-01")) |>
    magrittr::use_series(value) |>
    magrittr::divide_by(emp_us[[3, 2]]) |>
    magrittr::subtract(1) |>
    magrittr::multiply_by(100)

  emp_us_2008_2010 <- emp_us |>
    dplyr::filter(date %in% c("2008-01-01", "2009-01-01", "2010-01-01")) |>
    magrittr::use_series(value) |>
    magrittr::divide_by(emp_us[[65, 2]]) |>
    magrittr::subtract(1) |>
    magrittr::multiply_by(100)

  emp_ea_2008_2010 <- emp_ea |>
    dplyr::filter(date %in% c("2008-01-01", "2009-01-01", "2010-01-01")) |>
    magrittr::use_series(value) |>
    magrittr::divide_by(emp_ea[[10, 2]]) |>
    magrittr::subtract(1) |>
    magrittr::multiply_by(100)

  # create barplot

  bp(
    bar_1_data = emp_us_1929_1930,
    bar_2_data = emp_us_2008_2010,
    bar_3_data = emp_ea_2008_2010,
    y_ticks = 5,
    y_axis = TRUE,
    y_lim = c(-20, 5),
    mar_values = c(3, 4, 2, 1),
    names.arg = c("t+1", "t+2", "t+3")
  )

  # add legend to barplot

  legend(
    x = list(x = 0.6, y = -15),
    legend = c("Baseline", "USA", "Euro Area"),
    fill = gray.colors(3),
    border = FALSE,
    bty = "n",
    cex = 1.25
  )

}
