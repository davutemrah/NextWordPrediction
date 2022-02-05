
library(shiny)
library(sbo)

#final_predictable <- readRDS("./saved_model/final_model.RDS")

load("saved_model/final_predictable.rda")
final_predictab <- sbo_predictor(final_predictable)


shinyServer(
    function(input, output) {
        
      output$out1 <- renderText(predict(final_predictab, input$box1))

        

})