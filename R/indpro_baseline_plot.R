#' Baseline industrial production
#'
#' This function is plotting the dynamics of the US industrial production index for
#' the period Jul 1929 - Jul 1932 (peak to minimum). The resulting plot can be used
#' as a plot of baseline scenario and other time series can be added to it.
#'
#' @param max_value numeric providing the maximum value on the y-axis
#' @return plot object
#' @export
#'
#' @examples
#' indpro_baseline_plot()
indpro_baseline_plot <- function (max_value = 0, y_axis = TRUE) {

  par(cex = 0.8, cex.axis = 0.8, mar = c(2, 3, 2, 1))

# convert indpro_us to percentage change compared to base and initiate plot
  indpro_us |>
    dplyr::mutate(date = as.Date(date)) |>
    dplyr::filter(date >= as.Date("1929-07-01"), date <= as.Date("1932-07-01")) |>
    dplyr::mutate(value = value/value[1]) |>
    dplyr::mutate(value = value*100 - 100) |>
    dplyr::mutate(date = 1:37) |>
    plot(
      axes = F,
      type = "l",
      xlab = "",
      ylab = "",
      ylim = c(-55, max_value)
    )

# add base line
  lines(x = c(1, 37), y = c(0, 0), lty = "dotted")

# add x-axis
  axis(
    side = 1,
    at = c(1, 37),
    labels = c("t", "t + 36")
  )

  if (y_axis == TRUE) {

    # add y-axis

    axis(
      side = 2,
      at = seq(from = 10, to = -50, by = -10),
      labels = seq(from = 10, to = -50, by = -10) |> paste0("\\%"),
      las = 2,
      tick = F
    )

  }

# add label

  mtext(text = "GD", side = 4, at = -53.56, las = 2, line = -0.33, cex = 0.65, xpd = TRUE)

}
