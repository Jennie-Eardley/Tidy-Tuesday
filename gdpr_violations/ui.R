source("global.R")

ui <- fluidPage(
    theme = shinytheme("cerulean"),
    titlePanel(
        title = tags$h1("GDPR Violations")
    ),
    
    sidebarLayout(
        
        sidebarPanel(
            
            
            checkboxGroupInput("name", "Select Countries",
                             unique(gdpr_violations$name))
        ),
mainPanel(
        fluidRow(
            
                   plotlyOutput("gdpr_plot")))))