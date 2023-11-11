## code to prepare `stocks_us` dataset goes here

yfR::yf_get(tickers = "^GSPC", freq_data = "monthly", first_date = "1927-12-30") |>
  write.csv(paste0(getwd(), "/data-raw/stocks_us.csv"))

stocks_us <- read.csv(paste0(getwd(), "/data-raw/stocks_us.csv")) |>
  dplyr::select("ref_date", "price_high", "price_low") |>
  dplyr::rename(date = ref_date) |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::mutate(value = (price_high + price_low)/2) |>
  dplyr::select(date, value)

usethis::use_data(stocks_us, overwrite = TRUE)
