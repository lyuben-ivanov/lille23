## code to prepare `gdp_us` dataset goes here

fredr::fredr(
  series_id = "GDPA"
) |> write.csv(paste0(getwd(), "/data-raw/gdp_us.csv"))

gdp_us <- read.csv(paste0(getwd(), "/data-raw/gdp_us.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::mutate(year = lubridate::year(date)) |>
  dplyr::select(year, value)

usethis::use_data(gdp_us, overwrite = TRUE)
