library(readr)
library(dplyr)

url <- "https://raw.githubusercontent.com/yoursdearboy/ib-2024-git/refs/heads/main/data/billboard100.csv"

httr::GET(url, httr::write_disk("billboard.csv", overwrite = TRUE))

top_100 <- read.csv("billboard.csv")

top_10 <- top_100 |>
  group_by(Date) |>
  filter(row_number() <= 10) |>
  ungroup()

write_csv(top_10, "billboard.csv")
