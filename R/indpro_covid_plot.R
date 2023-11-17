#' Plot industrial production during the COVID-19 pandemic
#'
#' This function is plotting the dynamics of the US industrial production index for
#' the period Feb 2020 - Feb 2023 (peak to minimum).
#'
#'
#' @return plot object
#' @export
#'
#' @examples
#' indpro_covid_plot()
indpro_covid_plot <- function() {

  # plot baseline scenario

  indpro_baseline_plot(max_value = 10)

  # add industrial production data for USA

  indpro_us |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("2020-02-01"), date <= as.Date("2023-02-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:37) |>
    lines(lty = "longdash")

  # add label

  mtext(text = "USA", side = 4, at = 1, las = 2, line = -0.33)

  # add industrial production data for the Euro Area

  indpro_ea |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("2020-02-01"), date <= as.Date("2023-02-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:37) |>
    lines(lty = "dotted")

  # add label

  mtext(text = "EA19", side = 4, at = 5, las = 2, line = -0.33)
}
