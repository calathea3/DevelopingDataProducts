library(datasets)
library(shiny)

shinyServer(function(input, output) {
  output$text <- renderText(input$seedsource)
  output$LoblollyPlot <- renderPlot({ 
    plot(height ~ age, data = Loblolly, subset = Seed == input$seedsource,
               col = input$seedsource, 
               pch = 20, 
               cex = 5,
               xlab = "Tree age (yr)", las = 1,
               ylab = "Tree height (ft)",
               xlim = c(0,30),
               ylim = c(0,70)
         )
})
})