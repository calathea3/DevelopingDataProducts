library(datasets)
library(shiny)

shinyUI(fluidPage(
  titlePanel("Age and height of loblollies per seed source"),
  "Pinus taeda, commonly known as loblolly pine, is one of several pines native to the Southeastern United States.",
  "For more information see https://en.wikipedia.org/wiki/Pinus_taeda",
  
  
  sidebarLayout(
    sidebarPanel(
      h2("Input"),
      selectInput("seedsource", "Seed Source:", choices=sort(levels(Loblolly$Seed)), multiple=FALSE ),
      hr(),
      helpText("The Loblolly data frame has 14 different seed sources. Please pick one.")
    ),
    mainPanel(
      h2("Output"),
      "Loblolly growth for seed source ", textOutput("text"),
      plotOutput("LoblollyPlot") 
    )
  )
))