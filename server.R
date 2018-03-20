library(shiny)

# Server logic required to perform the basic arithmetic calculations
shinyServer(function(input, output) {
  
  output$value1 <- renderText({
    
    switch(input$op,
           "Add" = as.numeric(input$box1) + as.numeric(input$box2),
           "Subtract" = as.numeric(input$box1) - as.numeric(input$box2),
           "Multiply" = as.numeric(input$box1) * as.numeric(input$box2),
           "Divide" = as.numeric(input$box1) / as.numeric(input$box2))
    
})

  
})
