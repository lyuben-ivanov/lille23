## code to prepare `stocks_ea` dataset goes here

fredr::fredr(
  series_id = "SPASTT01EZM661N"
) |> write.csv(paste0(getwd(), "/data-raw/stocks_ea.csv"))

stocks_ea <- read.csv(paste0(getwd(), "/data-raw/stocks_ea.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date))

usethis::use_data(stocks_ea, overwrite = TRUE)
