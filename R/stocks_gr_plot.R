#' Stocks during the Great Recession plot
#'
#' A function that plots stock indices in USA and the Euro Area during the Great Recession of 2008-2009
#' and compares it to the baseline scenario of the Great Depression of 1929-1933.
#'
#' @return plot object
#' @export
#'
#' @examples
#'
#' stocks_gr_plot()
stocks_gr_plot <- function(max_value = 50) {

  # plot baseline scenario

  stocks_baseline_plot(max_value = 50)

  # add stocks data for USA

  stocks_us |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("2007-10-01"), date <= as.Date("2010-07-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:34) |>
    lines(lty = "longdash")

  # add label

  mtext(text = "US", side = 4, at = -30.45, las = 2, line = -0.33, cex = 0.65, xpd = TRUE)

  # add stocks data for the Euro Area 19

  stocks_ea |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("2007-10-01"), date <= as.Date("2010-07-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:34) |>
    lines(lty = "dotted")

  # add label

  mtext(text = "EA", side = 4, at = -40.26, las = 2, line = -0.33, cex = 0.65, xpd = TRUE)

}
