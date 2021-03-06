
library(tidyverse)
library(tidytuesdayR)

tuesdata <- tidytuesdayR::tt_load(2020, week = 29)
astronauts <- tuesdata$astronauts

# adding clarity to a column name 
astronauts <- astronauts %>% 
  rename("number_of_eva" = "field21")

# converting to lower case as some occupations are duplicated 
astronauts <- data.frame(lapply(astronauts, function(x){
  if (is.character(x)) return(tolower(x))
  else return(x)
}))
astronauts <- astronauts %>% 
  mutate_if(is.factor, as.character)

astronauts %>% 
  ggplot() +
  geom_bar(aes(x = year_of_mission, fill = sex)) +
  facet_wrap(~sex) +
  theme(panel.spacing = unit(1, "lines")) +
  labs(x = "Year of Mission",
       y = "Number of Astronauts",
       title = "Number of Astronaut Missions by Sex",
       caption = "Source: Corlett, Stavnichuk and Komarova 2020") +
  theme(legend.position = "none", plot.title = element_text(hjust = 0.5))

astronauts %>% 
  filter(mission_number == "1") %>% 
  ggplot() + 
  geom_point(aes(x = year_of_selection, y = year_of_mission, colour = sex)) +
  facet_wrap(~sex) +
  theme(legend.position = "none", panel.spacing = unit(1, "lines"), plot.title = element_text(hjust = 0.5)) +
  labs(x = "Year of Selection",
       y = "Year of Mission",
       title = "Year of First Mission Against Year of Selection",
       caption = "Source: Corlett, Stavnichuk and Komarova 2020")

# calculating the mean time between selection and an astronauts' first mission
first_missions <- astronauts %>% 
  select(year_of_selection, mission_number, year_of_mission, sex, nationality) %>% 
  filter(mission_number == "1")

sum(first_missions$year_of_mission - first_missions$year_of_selection)/nrow(first_missions)

# calculating the mean by sex
first_missions_female <- first_missions %>% 
  filter(sex == "female")
first_missions_male <- first_missions %>% 
  filter(sex == "male")



sum(first_missions_female$year_of_mission - first_missions_female$year_of_selection)/nrow(first_missions_female)


sum(first_missions_male$year_of_mission - first_missions_male$year_of_selection)/nrow(first_missions_male)

russian_astronauts <- first_missions %>% 
  filter(nationality == "u.s.s.r/russia")
usa_astronauts <- first_missions  %>% 
  filter(nationality == "u.s.")

sum(russian_astronauts$year_of_mission - russian_astronauts$year_of_selection)/nrow(russian_astronauts)

sum(usa_astronauts$year_of_mission - usa_astronauts$year_of_selection)/nrow(usa_astronauts)



