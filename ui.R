library(shiny)
shinyUI(
    
    
    pageWithSidebar(
    
        # Application title
        headerPanel("Next Word Prediction"),
    

        mainPanel(
            textInput("box1", "Please type your text:", value = "next"),
            submitButton('Submit')
        ),
        
        mainPanel(
            h4('Text suggestions'),
            verbatimTextOutput("out1")
        )
    )
)