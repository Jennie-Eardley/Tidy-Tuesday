library(tidyverse)
library(tidytuesdayR)

tuesdata <- tidytuesdayR::tt_load('2020-09-22')
peaks <- tuesdata$peaks
members <- tuesdata$members
expeditions <- tuesdata$expeditions

expeditions <- expeditions %>% 
  mutate(expedition_length = highpoint_date - basecamp_date)

expeditions$season = factor(expeditions$season, levels = c("Spring", "Summer", "Autumn", "Winter"))

expeditions %>% 
  filter(!is.na(expedition_length)) %>% 
  ggplot() + 
  geom_point(aes(x = year, y = expedition_length, col = season)) +
  facet_wrap(~oxygen_used)

