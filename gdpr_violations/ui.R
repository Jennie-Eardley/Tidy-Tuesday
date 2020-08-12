source("global.R")

ui <- fluidPage(
    theme = shinytheme("cerulean"),
    titlePanel(
        title = tags$h1("GDPR Violations")
    ),
    
    sidebarLayout(
        
        sidebarPanel(
            dateRangeInput(
                "date_range",
                label = tags$h5("Date Range"),
                format = "dd-mm-yyyy",
                start = "2018-05-12",
                end = NULL,
                min = "2018-05-12",
                max = NULL,
                startview = "year",
                separator = " - "
            ),
            checkboxGroupInput("name", "Select Countries",
                               unique(gdpr_violations$name)),
            actionButton("update", "Update Graph")
        ),
        
        mainPanel(
            fluidRow(
                plotOutput("plot_1"))
        )
    )
)