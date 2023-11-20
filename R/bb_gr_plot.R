#' Plot government budget balance during the Great Recession
#'
#' This function plots the government budget balance during the years of the Great Recession.
#' Since the Great Recession started at the end of 2007/beginning of 2008, the budget balance for the years 2008, 2009, and 2010 is plotted.
#'
#' @return plot object
#' @export
#'
#' @examples
#' bb_gr_plot()
#'
bb_gr_plot <- function() {

  bar_1 <- bb_us |>
    dplyr::filter (year %in% c(1930:1932)) |>
    dplyr::select(value)

  bar_2 <- bb_us |>
    dplyr::filter (year %in% c(2008:2010)) |>
    dplyr::select(value)

  bar_3 <- bb_ea |>
    dplyr::filter (year %in% c(2008:2010)) |>
    dplyr::select(value)

  bp(
    bar_1_data = bar_1,
    bar_2_data = bar_2,
    bar_3_data = bar_3,
    y_ticks = 5,
    y_axis = TRUE,
    y_lim = c(-10, 1),
    mar_values = c(3, 4, 2, 1),
    names.arg = c("t+1", "t+2", "t+3")
  )

  # add legend to barplot
  legend(
    x = list(x = 2, y = -5),
    legend = c("Baseline", "USA", "Euro Area"),
    fill = gray.colors(3),
    border = F,
    bty = "n",
    cex = 1.25
  )

}
