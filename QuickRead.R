# quick R script to read in the .csv

library(RCurl)
git_file <- getURL("https://raw.githubusercontent.com/bgstieber/Top250Beer/master/Top250Beers.csv")
beer_data <- read.csv(text = git_file, stringsAsFactors = FALSE)

abv.complete <- beer_data[!is.na(beer_data$ABV), ]$ABV

plot(density(abv.complete))
