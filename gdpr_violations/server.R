server <- function(input, output) {
  
  gdpr_plot <- eventReactive(input$update, {
  
    gdpr_violations %>% 
      filter(name %in% input$name) %>% 
      ggplot() +
      geom_bar(aes(x = name), fill = "#317eac") +
      labs(x = "Country",
           y = "Number of GDPR Violations",
           caption = "Data credit to Bob Rudis and Roel Hogervorst") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
    
  })
  output$plot_1 <- renderPlotly({gdpr_plot()})
}

