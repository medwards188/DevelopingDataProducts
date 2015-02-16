library(shiny)
shinyUI(pageWithSidebar(
        #Application Title
        headerPanel("Calculate Your BMI (Body Mass Index)"),
        
        #Input values from user
        sidebarPanel(
                h4('This app calculates a users BMI (Body Mass Index) based on two user input values weight and height.'),
                numericInput('weight', 'Weight in pounds',0,min=0,max=850,step=1),
                numericInput('height', 'Height in inches',0,min=0,max=96,step=1),
                actionButton("submitButton", "Submit")
        ),
        
        #Output display values
        mainPanel(
                h3('Your BMI is'),
                verbatimTextOutput("BMI")
        )
        ))