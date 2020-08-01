server <- function(input, output) {
  
  output$gdpr_plot <- renderPlotly({
    
    plot1 <- gdpr_plot %>% 
      filter(country %in% input$country) %>% 
      ggplot() +
      geom_bar(aes(x = name)) +
      labs(x = "Keyword",
           y = "Number of Searches per keyword") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
    ggplotly(plot1)
  })
}