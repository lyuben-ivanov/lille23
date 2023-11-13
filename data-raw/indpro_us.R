## code to prepare `indpro_us` dataset goes here

fredr::fredr(
  series_id = "INDPRO"
) |> write.csv("~/Library/CloudStorage/OneDrive-СтопанскифакултетСУСв.КлиментОхридски/Research/Lille Conference 2023/lille23/data-raw/indpro_us.csv")

indpro_us <- read.csv("~/Library/CloudStorage/OneDrive-СтопанскифакултетСУСв.КлиментОхридски/Research/Lille Conference 2023/lille23/data-raw/indpro_us.csv") |>
  dplyr::select(date, value)

usethis::use_data(indpro_us, overwrite = TRUE)
