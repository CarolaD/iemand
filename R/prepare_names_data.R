
girls_names <- readr::read_csv("/Users/Chica/Documents/Data Analysis/satRday 2018/iemand/za_babynames-master/data-raw/girls_names.csv")
girls_names$sex <- "female"

boys_names <- readr::read_csv("/Users/Chica/Documents/Data Analysis/satRday 2018/iemand/za_babynames-master/data-raw/boys_names.csv")
boys_names$sex <- "male"

sa_names <- rbind(girls_names, boys_names)

names(sa_names) <- c("first_name", "number", "sex")

usethis::use_data(sa_names, overwrite = TRUE)
