library(shiny)
library(tidyr)
library(dplyr)

new_data = read.csv("new_data.csv")

ui = pageWithSidebar(
  headerPanel("Criteria for the RPG's you want to play"),
  sidebarPanel(
    sliderInput("ratingInput", "Rating:", 0, 5, c(2.5, 3.5)),
    sliderInput("game_lengthInput", "Game Length:", 0, 80, c(40, 60), post = "hours"),
    sliderInput("difficulty_numericInput", "Difficulty:", 0, 5, c(2.5, 3.5)),
    sliderInput("completion_rateInput", "Completion Rate:", 0, 100, c(40, 60))
  ),
  mainPanel(
    tableOutput("results")
  )
)

server = function(input, output) {
  output$results = renderTable({
    filtered = new_data %>% filter(rating >= input$ratingInput[1],
                                   rating <= input$ratingInput[2],
                                   game_length >= input$game_lengthInput[1],
                                   game_length <= input$game_lengthInput[2],
                                   difficulty_numeric >= input$difficulty_numericInput[1],
                                   difficulty_numeric <= input$difficulty_numericInput[2],
                                   completion_rate >= input$completion_rateInput[1],
                                   completion_rate <= input$completion_rateInput[2])
    filtered[ , c("game_title", "system")]
  })
}
shinyApp(ui = ui, server = server)
