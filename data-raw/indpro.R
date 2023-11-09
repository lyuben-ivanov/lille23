## code to prepare `indpro` dataset goes here

fredr::fredr(
  series_id = "INDPRO"
) |> write.csv("~/Library/CloudStorage/OneDrive-СтопанскифакултетСУСв.КлиментОхридски/Research/Lille Conference 2023/lille23/data-raw/indpro.csv")

indpro <- read.csv("~/Library/CloudStorage/OneDrive-СтопанскифакултетСУСв.КлиментОхридски/Research/Lille Conference 2023/lille23/data-raw/indpro.csv")

usethis::use_data(indpro, overwrite = TRUE)
