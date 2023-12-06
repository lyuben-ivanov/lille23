## code to prepare `mb_ea` dataset goes here

mb_ea <- readr::read_csv(
  file = paste0(getwd(), "/data-raw/ECB Data Portal_20231120173650.csv"),
  col_select = c(1, 3), skip = 1,
  col_names = c("date", "per", "value"),
  show_col_types = FALSE)

## add missing data for 2020-2022 through imputation

mb_ea_Feb_2020 <- dplyr::filter(mb_ea, date %in% c("2020-01-31", "2020-03-31")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Feb_2020 <- tibble::tibble(
  date = as.Date("2020-02-28"),
  value = mb_ea_Feb_2020)

mb_ea_Apr_2020 <- dplyr::filter(mb_ea, date %in% c("2020-03-31", "2020-05-31")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Apr_2020 <- tibble::tibble(
  date = as.Date("2020-04-30"),
  value = mb_ea_Apr_2020)

mb_ea_Aug_2020 <- dplyr::filter(mb_ea, date %in% c("2020-07-31", "2020-09-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Aug_2020 <- tibble::tibble(
  date = as.Date("2020-08-30"),
  value = mb_ea_Aug_2020)

mb_ea_Oct_2020 <- dplyr::filter(mb_ea, date %in% c("2020-09-30", "2020-11-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Oct_2020 <- tibble::tibble(
  date = as.Date("2020-10-30"),
  value = mb_ea_Oct_2020)

mb_ea_Feb_2021 <- dplyr::filter(mb_ea, date %in% c("2021-01-31", "2021-03-31")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Feb_2021 <- tibble::tibble(
  date = as.Date("2021-02-28"),
  value = mb_ea_Feb_2021)

mb_ea_May_2021 <- dplyr::filter(mb_ea, date %in% c("2021-04-30", "2021-06-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_May_2021 <- tibble::tibble(
  date = as.Date("2021-05-30"),
  value = mb_ea_May_2021)

mb_ea_Aug_2021 <- dplyr::filter(mb_ea, date %in% c("2021-07-31", "2021-09-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Aug_2021 <- tibble::tibble(
  date = as.Date("2021-08-30"),
  value = mb_ea_Aug_2021)

mb_ea_Oct_2021 <- dplyr::filter(mb_ea, date %in% c("2021-09-30", "2021-11-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Oct_2021 <- tibble::tibble(
  date = as.Date("2021-10-30"),
  value = mb_ea_Oct_2021)

mb_ea_Jan_2022 <- dplyr::filter(mb_ea, date %in% c("2021-12-31", "2022-02-28")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Jan_2022 <- tibble::tibble(
  date = as.Date("2022-01-30"),
  value = mb_ea_Jan_2022)

mb_ea_May_2022 <- dplyr::filter(mb_ea, date %in% c("2022-04-30", "2022-06-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_May_2022 <- tibble::tibble(
  date = as.Date("2022-05-30"),
  value = mb_ea_May_2022)

mb_ea_Aug_2022 <- dplyr::filter(mb_ea, date %in% c("2022-07-31", "2022-09-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Aug_2022 <- tibble::tibble(
  date = as.Date("2022-08-30"),
  value = mb_ea_Aug_2022)

mb_ea_Oct_2022 <- dplyr::filter(mb_ea, date %in% c("2022-09-30", "2022-11-30")) |>
  magrittr::use_series(value) |>
  mean()

mb_ea_imputed_Oct_2022 <- tibble::tibble(
  date = as.Date("2022-10-30"),
  value = mb_ea_Oct_2022)


mb_ea_imputed_2020_2023 <- rbind(
  mb_ea_imputed_Feb_2020,
  mb_ea_imputed_Apr_2020,
  mb_ea_imputed_Aug_2020,
  mb_ea_imputed_Oct_2020,
  mb_ea_imputed_Feb_2021,
  mb_ea_imputed_May_2021,
  mb_ea_imputed_Aug_2021,
  mb_ea_imputed_Oct_2021,
  mb_ea_imputed_Jan_2022,
  mb_ea_imputed_May_2022,
  mb_ea_imputed_Aug_2022,
  mb_ea_imputed_Oct_2022
)

mb_ea <- dplyr::rows_insert(mb_ea, mb_ea_imputed_2020_2023, by = c("date", "value")) |>
  dplyr::arrange(date)


usethis::use_data(mb_ea, overwrite = TRUE)
