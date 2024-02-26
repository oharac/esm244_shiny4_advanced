library(shiny)
library(tidyverse)
library(palmerpenguins)

ui <- navbarPage(
  title = 'Sample App',
  tabPanel(
    title = 'Tab 1',
    sidebarLayout(
      sidebarPanel(
        h3('Sidebar text'),
        radioButtons(
          inputId = 'spp',
          label = 'Which penguin species?',
          choices = c('Adelie', 'Chinstrap', 'Gentoo'),
          selected = 'Adelie'),
        checkboxGroupInput(
          inputId = 'island',
          label = 'Which island(s)?',
          choices = c('Biscoe', 'Dream', 'Torgersen'),
          selected = 'Biscoe')
      ), ### end sidebarPanel
      mainPanel(
        h2('Main panel'),
        plotOutput(outputId = 'peng_plot')
      ) ### end mainPanel
    ) ### end sidebarLayout
  ) ### end tabPanel
)
