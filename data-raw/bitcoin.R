## code to prepare `bitcoin` dataset goes here

bitcoin <-
  read.table(file = paste0(getwd(),"/data-raw/BTC-USD-17.09.2014 - 06.12.2023.csv"), # specifying file location
             header = T,                           # the columns have header
             sep=",",                              # separator
             dec = ".",                            # decimal point
             colClasses = c("character",           # first column is character
                            "NULL",                # skip next column
                            "NULL",                # skip next column
                            "NULL",                # skip next column
                            "NULL",                # skip next column
                            "numeric",             # this column is  numeric
                            "NULL"),               # skip last column
             col.names = c("date",                 # name of first column
                           "misc",                 # name of skipped column
                           "misc",                 # name of skipped column
                           "misc",                 # name of skipped column
                           "misc",                 # name of skipped column
                           "value",                # name of column 6
                           "misc")                 # name of skipped column
  )

bitcoin$date <- as.Date(bitcoin$date)          # specifying data format

usethis::use_data(bitcoin, overwrite = TRUE)
