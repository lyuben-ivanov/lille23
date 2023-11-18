#'  Stocks dynamics during the Great Depression plot
#'
#' This function is plotting the dynamics of the S&P 500 index for
#' the period Sep 1929 - Jun 1932 (monthly peak to monthly minimum). The resulting plot can be used
#' as a plot of baseline scenario and other time series can be added to it.
#'
#' @param max_value numeric providing the maximum value on the y-axis
#' @return plot object
#' @export
#'
#' @examples
#' stocks_baseline_plot()
stocks_baseline_plot <- function (max_value = 0) {

  # convert indpro_us to percentage change compared to base and initiate plot
  stocks_us |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("1929-09-01"), date <= as.Date("1932-06-30")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:34) |>
    plot(
      axes = F,
      type = "l",
      xlab = "",
      ylab = "",
      ylim = c(-90, max_value)
    )

  # add base line
  lines(x = c(1, 34), y = c(0, 0), lty = "dotted")

  # add x-axis
  axis(
    side = 1,
    at = c(1, 34),
    labels = c("t + 2", "t + 34")
  )

  # add y-axis

  axis(
    side = 2,
    at = seq(from = max_value, to = -90, by = -10),
    labels = seq(from = max_value, to = -90, by = -10) |> paste0("\\%"),
    las = 2,
    tick = F
  )

  # add label

  mtext(text = "Base", side = 4, at = -84.65, las = 2, line = -0.33)

}
