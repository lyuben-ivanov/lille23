## code to prepare `bb_us` dataset goes here

fredr::fredr(
  series_id = "FYFSGDA188S"
) |> write.csv(paste0(getwd(), "/data-raw/bb_us.csv"))


bb_us <- read.csv(paste0(getwd(), "/data-raw/bb_us.csv")) |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date))

usethis::use_data(bb_us, overwrite = TRUE)
