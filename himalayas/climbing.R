library(tidyverse)
library(tidytuesdayR)

tuesdata <- tidytuesdayR::tt_load('2020-09-22')
peaks <- tuesdata$peaks
members <- tuesdata$members
expeditions <- tuesdata$expeditions

expeditions <- expeditions %>% 
  mutate(expedition_length = highpoint_date - basecamp_date)

expeditions %>% 
  filter(!is.na(expedition_length)) %>% 
  ggplot() + 
  geom_point(aes(x = year, y = expedition_length, col = oxygen_used)) +
  facet_wrap(~season)

