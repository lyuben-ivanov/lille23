## code to prepare `emp_ea` dataset goes here

fredr::fredr(
  series_id = "LFEMTTTTEZA647S"
) |> write.csv(paste0(getwd(), "/data-raw/emp_ea_1998_2022.csv"))

emp_ea <- readr::read_csv(paste0(getwd(), "/data-raw/emp_ea_1998_2022.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::mutate(value = value / 1000)

usethis::use_data(emp_ea, overwrite = TRUE)
