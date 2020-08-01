library(tidyverse)
library(shinythemes)
library(shiny)
library(plotly)

gdpr_violations <- readr::read_tsv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-04-21/gdpr_violations.tsv')

unique(gdpr_violations$name)