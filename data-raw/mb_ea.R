## code to prepare `mb_ea` dataset goes here

mb_ea <- readr::read_csv(
  file = paste0(getwd(), "/data-raw/ECB Data Portal_20231120173650.csv"),
  col_select = c(1, 3), skip = 1,
  col_names = c("date", "per", "value"),
  show_col_types = FALSE)

usethis::use_data(mb_ea, overwrite = TRUE)
