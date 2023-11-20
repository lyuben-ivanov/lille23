## code to prepare `mb_ea` dataset goes here

# https://data.ecb.europa.eu/publications/money-credit-and-banking/3031819

mb_ea <- readr::read_csv(
  file = paste0(getwd(), "/data-raw/ECB_mb_data.csv"), col_select = c(1, 2)) |>
  dplyr::rename(date = `Obs. Date`, value = `Obs. value`) |>
  dplyr::group_by(date) |>
  dplyr::summarise(value = sum(value))




usethis::use_data(mb_ea, overwrite = TRUE)
