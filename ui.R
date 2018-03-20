library(shiny)

# UI for a simple calculator application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Simple Calculator"),
  
  # Sidebar with inputs for numbers and operation
  sidebarLayout(
    sidebarPanel(
       textInput("box1","Enter 1st number"),
       textInput("box2","Enter 2nd number"),
       selectInput("op","Select operation to be performed on above values",
                    choices = list("Add","Subtract","Multiply","Divide")),
       submitButton("Calculate")
       
    ),
    
    # Show the calculated output
    mainPanel(
       h3("The value is : "),
       textOutput("value1")
    )
  )
))
