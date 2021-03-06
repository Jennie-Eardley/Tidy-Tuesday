# Tidy-Tuesday

**Introduction**

Tidy Tuesday is an R social data project providing a wide variety of datasets to visualise, further details are available here: https://github.com/rfordatascience/tidytuesday/blob/master/README.md

I have selected a few that have interested me to work on and plan to continue working through the available datasets.

All of my visualisations use the Tidyverse library. 

**Astronauts**:

Number of astronauts by year of mission split by sex.

![image](https://user-images.githubusercontent.com/59340652/90976286-aefb0280-e533-11ea-8bb3-f54f7fbcdfc9.png)


Year of first mission against year of selection split by sex. On average the time between selection and the first mission is longer for male astronauts with a mean of 6.03 years compared to a mean of 5.63 for female astronauts. Additionally, the mean time between selection and the first mission is longer for Russian astronauts at 7.32 years compared to a mean of 5.82 years. 

![image](https://user-images.githubusercontent.com/59340652/90976299-c1753c00-e533-11ea-985b-0e0192ad0aee.png)


**GDPR Violations**:

I made shiny app which looks at GDPR violations by country and that can be filtered by date. I used the shiny and shiny themes libraries. 

![image](https://user-images.githubusercontent.com/59340652/90669902-46b5d380-e24a-11ea-84b0-0e07c889ea61.png)


**Palmer Penguins**:

This is a dataset which provides details of three different types of penguins. I took a look at the correlation between flipper length and body mass by type of penguin. I used the palmerpenguins library. 

![image](https://user-images.githubusercontent.com/59340652/90976744-69403900-e537-11ea-9c40-629ffa681351.png)

**Volcanoes**:

The volcano data came from the Smithsonian and gives detailed information about individual volcanoes and eruptions. I decided to focus on Iceland and used leaflet to visualise volcano eruptions on a map. I found the volcano icons on flaticon, credit to "https://www.flaticon.com/authors/dinosoftlabs". If the code is run, you can hover over the volcano icons to get information about the volcano name - below is just a screenshot.  

![image](https://user-images.githubusercontent.com/59340652/90668303-cc844f80-e247-11ea-9eb2-4492b143386c.png)

**Chopped**

Here are some GGwordclouds of the most common ingredients used in the US cooking show "Chopped" broken down by course. The data is from Kaggle courtesy of Jeffrey Braun with a h/t to: Nick Wan. Each ingredient featured at least 15 times in that particular course. Descriptive and stop words made this slightly trickier so I used anti-joins with lists of colours and stop words and an inner join with an extensive list of food. Food list available here: https://data.world/alexandra/food-related-words and colour list available here: https://data.world/dilumr/color-names/workspace/file?filename=colorhexa_com.csv Libraries used: tidytext and ggwordcloud.

Appetizers:

![image](https://user-images.githubusercontent.com/59340652/91607992-a6a82a80-e96c-11ea-94e6-96bf8638dc02.png)

Entrees:

![image](https://user-images.githubusercontent.com/59340652/91608074-c7708000-e96c-11ea-868f-f619d32a1af3.png)

Desserts:

![image](https://user-images.githubusercontent.com/59340652/91608092-ce978e00-e96c-11ea-9fe2-bf145317a1cc.png)

**Crop Yield**

This week there was a selection of different datasets to look at from Our World in Data relating to crop yield. I had a look at the production of bananas in South American countries. 

![image](https://user-images.githubusercontent.com/59340652/91878167-d01bcb80-ec76-11ea-87cd-f409bafd0279.png)

**San Francisco Trees**

Experimenting with clusters in leaflet. This visualisation shows a clustered distribution of trees across San Francisco. When the code is open the user can click on each cluster to see a visualisation of the area covered by the cluster. Double clicking on a cluster allows the user to zoom in one the area covered with a breakdown of clusters. Data is from San Francisco's Open Data Portal. 

![image](https://user-images.githubusercontent.com/59340652/92800909-0d860480-f3ad-11ea-88d3-5b227007444e.png)

**Tidy Kids**

This dataset looks at spending per child by US state between 1997 and 2016. I decided to concentrate on the spend on primary and secondary education. I had my first go at an animated plot following an excellent tutorial by Abdul Majed Raja available at: https://www.r-bloggers.com/how-to-create-bar-race-animation-charts-in-r/ 


![gganim](https://user-images.githubusercontent.com/59340652/93917909-810c0800-fd03-11ea-97e3-0dc4c8a4583b.gif)

**Himalayas**

This week's dataset is about all of the expeditions to Himalayan mountains and includes information about successes, failures and information about the climbers themselves. I had a look at all of the expeditions by season and split it by oxygen usage. We can see that Spring and Autumn are the most popular seasons to climb. Generally, oxygen is more likely to be used during longer expeditions. 

![image](https://user-images.githubusercontent.com/59340652/94286617-2534bf80-ff4d-11ea-8217-9def9cb0d936.png)


**Dinosaurus**

This visualisation utilises the Datasaurus Dozen dataset, a set of visualisations with almost identical mean of x, mean of y, standard deviation of x, standard deviation of y, and Pearson correlation between x and y values. It's purpose is to demonstrate the importance of plotting data and not to just rely on summary statistics. The original data is by Alberto Cairo. There is a datasauRus package by Steph Locke and Lucy McGowan and Jesus M. Castagnetto suggested the data to the TidyTuesday team. I used gganimate to create a plot animation and saved it as a gif using the gifski package. 

![dinosaurus](https://user-images.githubusercontent.com/59340652/96001715-3d06b180-0e30-11eb-8c20-2285205c97a0.gif)
