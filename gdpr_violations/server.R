server <- function(input, output) {
  output$gdpr_plot <- renderPlotly({
    plot1 <- countries %>% 
      filter(country %in% input$country) %>% 
      ggplot() +
      geom_col(aes(x = name, y = count)) +
      labs(x = "Keyword",
           y = "Number of Searches per keyword") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
    ggplotly(plot1)
  })
}