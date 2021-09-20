library(tidyverse)
library(snakecase)
library(magrittr)
college <- read_csv("../data/College.csv")
colnames(college)[1] <- "name"
colnames(college) <- to_snake_case(colnames(college))
head(college)
summary(college)
pairs(college[, 3:11])
college %<>%
  mutate("elite" = ifelse(top_10_perc > 50, "elite", "not_elite"),
         elite = as.factor(elite))
table(college$elite)
summary(college)

# too basic moved on to ch3
