server <- function(input, output, session) {

  observeEvent(input$spp, {
    peng_spp_df <- penguins %>%
      filter(species == input$spp)
    islands_vec <- peng_spp_df$island %>% unique()

    updateCheckboxGroupInput(
      inputId = "island",
      choices = islands_vec)
  })


  peng_reactive <- reactive({
    penguins %>%
      filter(species == input$spp) %>%
      filter(island %in% input$island)
  })

  output$peng_plot <- renderPlot({
    ggplot(data = peng_reactive()) +
      geom_point(aes(x = flipper_length_mm, y = body_mass_g,
                     color = species, shape = island)) +
      theme_minimal()
  })
}
