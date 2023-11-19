## code to prepare `bb_ea` dataset goes here

fredr::fredr(
  series_id = "GGNLBAEZA188N"
) |> write.csv(paste0(getwd(), "/data-raw/bb_ea_1991_2010.csv"))


bb_ea_1991_2010 <- read.csv(paste0(getwd(), "/data-raw/bb_ea_1991_2010.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::mutate(year = lubridate::year(date)) |>
  dplyr::select(year, value)

bb_ea_2013_2022 <- read.csv(paste0(getwd(), "/data-raw/gov_10dd_edpt1_page_linear.csv")) |>
  dplyr::select(TIME_PERIOD, OBS_VALUE) |>
  dplyr::mutate(year = TIME_PERIOD, value = OBS_VALUE) |>
  dplyr::select(year, value)

bb_ea <- dplyr::bind_rows(bb_ea_1991_2010, bb_ea_2013_2022)

usethis::use_data(bb_ea, overwrite = TRUE)
