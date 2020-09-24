library(tidyverse)
library(tidytuesdayR)

tuesdata <- tidytuesdayR::tt_load('2020-09-22')
peaks <- tuesdata$peaks
members <- tuesdata$members
expeditions <- tuesdata$expeditions

expeditions <- expeditions %>% 
  mutate(expedition_length = highpoint_date - basecamp_date)


