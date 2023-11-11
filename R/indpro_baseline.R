#' Baseline industrial production
#'
#' This function is plotting the dynamics of the US industrial production index for
#' the period Jul 1929 - Jul 1932 (peak to minimum). The resulting plot can be used
#' as a plot of baseline scenario and other time series can be added to it.
#'
#' @return plot object
#' @export
#'
#' @examples
#' indpro_baseline()
indpro_baseline <- function () {

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
      ylab = ""
    )

# add base line
  lines(x = c(1, 37), y = c(0, 0), lty = "dotted")

# add x-axis
  axis(
    side = 1,
    at = c(1, 37),
    labels = c("t", "t + 36")
  )

# add y-axis

  axis(
    side = 2,
    at = seq(from = 10, to = -50,by = -10),
    labels = seq(from = 10, to = -50, by = -10) |> paste0("\\%"),
    las = 2,
    tick = F
  )

# add label

  mtext(text = "Baseline", side = 4, at = -53.56, las = 2, line = -0.33)

}
