## code to prepare `indpro_ea` dataset goes here

fredr::fredr(
  series_id = "EA19PRINTO01IXOBSAM"
) |> write.csv("~/Library/CloudStorage/OneDrive-СтопанскифакултетСУСв.КлиментОхридски/Research/Lille Conference 2023/lille23/data-raw/indpro_ea.csv")

indpro_ea <- read.csv("~/Library/CloudStorage/OneDrive-СтопанскифакултетСУСв.КлиментОхридски/Research/Lille Conference 2023/lille23/data-raw/indpro_ea.csv") |>
  dplyr::select(date, value) |>
  dplyr::mutate(date = as.Date(date))

usethis::use_data(indpro_ea, overwrite = TRUE)
