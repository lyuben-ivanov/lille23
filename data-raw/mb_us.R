## code to prepare `mb_us` dataset goes here

fredr::fredr(
  series_id = "AMBNS"
) |> write.csv(paste0(getwd(), "/data-raw/mb_us_discontinued.csv"))

fredr::fredr(
  series_id = "BOGMBASE"
) |> write.csv(paste0(getwd(), "/data-raw/mb_us.csv"))

mb_us_discontinued <- read.csv(paste0(getwd(), "/data-raw/mb_us_discontinued.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date))

mb_us <- read.csv(paste0(getwd(), "/data-raw/mb_us.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::filter(date >= "2019-11-02") |>
  dplyr::mutate(value = value/1000)


mb_us <- dplyr::bind_rows(mb_us_discontinued, mb_us)

usethis::use_data(mb_us, overwrite = TRUE)
