library(tidyverse)
library(tidytuesdayR)

tuesdata <- tidytuesdayR::tt_load('2020-09-22')
peaks <- tuesdata$peaks
members <- tuesdata$members
expeditions <- tuesdata$expeditions

# calculating expedition length

expeditions <- expeditions %>% 
  mutate(expedition_length = highpoint_date - basecamp_date)

# reordering factors
expeditions$season = factor(expeditions$season, levels = c("Spring", "Summer", "Autumn", "Winter"))

expeditions <- expeditions %>% 
  filter(!is.na(oxygen_used)) %>% 
  mutate(oxygen_usage = ifelse(str_detect(oxygen_used, "TRUE"), "Oxygen Used", "Oxygen Not Used"))

expeditions %>% 
  filter(!is.na(expedition_length)) %>% 
  ggplot() + 
  geom_point(aes(x = year, y = expedition_length, col = oxygen_usage)) +
 facet_wrap(~season) +
  labs(x = "Year",
       y = "Length of Expedition (days)",
       title = "Use of Oxygen in Himalayan Expeditions",
       caption = "Data Source: The Himalayan Database and Alex Cookson") +
  theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5)) 
  

