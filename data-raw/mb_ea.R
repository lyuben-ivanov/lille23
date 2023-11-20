## code to prepare `mb_ea` dataset goes here

# https://data.ecb.europa.eu/data/datasets/ILM/ILM.M.U2.C.LT00001.Z5.EUR
# https://www.ecb.europa.eu/pub/pdf/other/ebbox201706_07.en.pdf

mb_ea <- readr::read_csv(
  file = paste0(getwd(), "/data-raw/ECB Data Portal_20231120173650.csv"),
  col_select = c(1, 3), skip = 1,
  col_names = c("date", "per", "mb"))

usethis::use_data(mb_ea, overwrite = TRUE)
