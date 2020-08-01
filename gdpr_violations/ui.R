source("global.R")

ui <- fluidPage(
    theme = shinytheme("superhero"),
    titlePanel(
        title = tags$h1("GDPR Violations")
    ),
    
    sidebarLayout(
        
        sidebarPanel(
            
            
            checkboxGroupInput("country", "Select Countries",
                             unique(gdpr_violations$name))
        ),
mainPanel(
        fluidRow(
            column(6,
                   plotlyOutput("gdpr_plot"))))))