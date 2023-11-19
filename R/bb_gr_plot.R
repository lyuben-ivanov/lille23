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



}
