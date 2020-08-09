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
                start = "2019-09-01",
                end = "2020-02-29",
                min = "2019-09-01",
                max = "2020-02-29",
                startview = "year",
                separator = " - "
            ),
            checkboxGroupInput("name", "Select Countries",
                             unique(gdpr_violations$name)),
            actionButton("update", "Update Graph")
        ),
        
        mainPanel(
            fluidRow(
                plotlyOutput("plot_1"))
            )
        )
    )