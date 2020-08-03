server <- function(input, output) {
  
  output$gdpr_plot <- renderPlotly({
    
    plot1 <- gdpr_violations %>% 
      filter(name %in% input$name) %>% 
      ggplot() +
      geom_bar(aes(x = name), fill = "#317eac") +
      labs(x = "Country",
           y = "Number of GDPR Violations",
           caption = "Data credit to Bob Rudis and Roel Hogervorst") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
    ggplotly(plot1)
  })
}