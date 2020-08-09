library(tidyverse)
library(shinythemes)
library(shiny)
library(plotly)
library(lubridate)

gdpr_violations <- readr::read_tsv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-04-21/gdpr_violations.tsv')

attach(gdpr_violations)
gdpr_violations <- gdpr_violations[order(name), ]