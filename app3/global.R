library(shiny)
library(tidyverse)
library(palmerpenguins)

### load data, prep it for the app; define functions; etc.
penguins <- penguins %>%
  drop_na() %>%
  mutate(species = str_to_lower(species))
