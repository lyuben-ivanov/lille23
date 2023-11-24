stocks_covid_plot <- function() {

  # add baseline data

  stocks_baseline_plot(max_value = 50, y_axis = FALSE)

  # add stock market data for USA

  stocks_us |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("2020-02-01"), date <= as.Date("2022-11-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:34) |>
    lines(lty = "longdash")

  # add label

  mtext(text = "US", side = 4, at = 24.46, las = 2, line = -0.33, cex = 0.65, xpd = TRUE)

  # add stock market data for Euro Area 19

  stocks_ea |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("2020-02-01"), date <= as.Date("2022-11-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:34) |>
    lines(lty = "dotted")

  # add label

  mtext(text = "EA", side = 4, at = 1.74, las = 2, line = -0.33, cex = 0.65, xpd = TRUE)

}
