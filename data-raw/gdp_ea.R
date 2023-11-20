## code to prepare `gdp_ea` dataset goes here

fredr::fredr(
  series_id = "CPMEURNSAB1GQEA19"
) |> write.csv(paste0(getwd(), "/data-raw/gdp_ea.csv"))

gdp_ea <- read.csv(paste0(getwd(), "/data-raw/gdp_ea.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::mutate(year = lubridate::year(date)) |>
  dplyr::select(year, value) |>
  dplyr::group_by(year) |>
  dplyr::summarise(value = sum(value)) |>
  dplyr::filter(year != 2023)

usethis::use_data(gdp_ea, overwrite = TRUE)
