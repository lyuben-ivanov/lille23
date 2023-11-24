#' Industrial production during the Great Recession plot
#'
#' A function that plots industrial production in USA and the Euro Area during the Great Recession of 2008-2009
#' and compares it to the baseline scenario of the Great Depression of 1929-1933.
#'
#' @return plot object
#' @export
#'
#' @examples
#' indpro_gr_plot()
#'
 indpro_gr_plot <- function() {

  # plot baseline scenario

  indpro_baseline_plot(max_value = 10)

  # add great recession data for the USA

  indpro_us |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("2007-12-01"), date <= as.Date("2010-12-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:37) |>
    lines(lty = "longdash")

  # add label

  mtext(text = "US", side = 4, at = -8.5 - 1.5, las = 2, line = -0.33, cex = 0.65, xpd = TRUE)

  # add great recession data for the Euro Area 19

  indpro_ea |>
    dplyr::filter(date >= as.Date("2007-12-01"), date <= as.Date("2010-12-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:37) |>
    lines(lty = "dotted")

  # add label

  mtext(text = "EA", side = 4, at = -8.3 + 1.5, las = 2, line = -0.33, cex = 0.65, xpd = TRUE)

}


