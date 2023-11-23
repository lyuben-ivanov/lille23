## code to prepare `emp_us` dataset goes here

fredr::fredr(
  series_id = "A0871BUSA175NNBR"
) |> write.csv(paste0(getwd(), "/data-raw/emp_us_1927_1943.csv"))

fredr::fredr(
  series_id = "LFEMTTTTUSA647S"
) |> write.csv(paste0(getwd(), "/data-raw/emp_us_1960_2022.csv"))

emp_us_1927_1943 <- readr::read_csv(paste0(getwd(), "/data-raw/emp_us_1927_1943.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date))

emp_us_1960_2022 <- readr::read_csv(paste0(getwd(), "/data-raw/emp_us_1960_2022.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date)) |>
  tidyr::drop_na() |>
  dplyr::mutate(value = value / 1000)

emp_us <- dplyr::bind_rows(emp_us_1927_1943, emp_us_1960_2022)

usethis::use_data(emp_us, overwrite = TRUE)
