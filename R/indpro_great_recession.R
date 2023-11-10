indpro_baseline()

indpro |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::filter(date >= as.Date("2007-12-01"), date <= as.Date("2010-12-01")) |>
  dplyr::mutate(value = value/value[1]) |>
  dplyr::mutate(value = value*100 - 100) |>
  dplyr::mutate(date = 1:37) |>
  lines(lty = "longdash")

# add label

mtext(text = "US\nGreat\nRecession", side = 4, at = -8.5, las = 2, line = -0.33)
