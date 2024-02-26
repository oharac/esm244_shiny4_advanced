ui <- navbarPage(
  title = 'Sample App',
  tabPanel(
    title = 'Intro',
    includeText('intro_text.txt'),
    includeMarkdown('intro_text.md')
  ),
  tabPanel(
    title = 'Tab 1',
    sidebarLayout(
      sidebarPanel(
        h3('Sidebar text'),
        radioButtons(
          inputId = 'spp',
          label = 'Which penguin species?',
          choices = unique(penguins$species),
          selected = 'Adelie'),
        checkboxGroupInput(
          inputId = 'island',
          label = 'Which island(s)?',
          choices = unique(penguins$island),
          selected = 'Biscoe')
      ), ### end sidebarPanel
      mainPanel(
        h2('Main panel'),
        plotOutput(outputId = 'peng_plot')
      ) ### end mainPanel
    ) ### end sidebarLayout
  ) ### end tabPanel
)
