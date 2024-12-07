library(bingo)
library(readr)

artists <- read_csv("artists.txt", col_names = c("name"))

bc <- bingo(n_cards = 5, words = artists$name)

plot(bc)
