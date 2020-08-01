source("global.R")

ui <- fluidPage(
    theme = shinytheme("superhero"),
    titlePanel(
        title = tags$h1("GDPR Violations")
    ),
    
    sidebarLayout(
        
        sidebarPanel(
            tags$h5("Select a Country"),
            
            checkboxGroupInput("country", "Select Keywords",
                             unique(gdpr_violations$name))
        )
        
    ),
    mainPanel(plotlyOutput(gdpr_plot)))