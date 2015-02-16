library(shiny)

#BMI formula
BMI <- function(weight,height){
        (weight/(height*height))*703
}

#Once user enters weight, height, and presses submit, his/her BMI will display as output
shinyServer(
        function(input, output){
                output$BMI <- renderPrint({
                   #output$BMI is dependent on hitting the Submit Button
                   if (input$submitButton == 0) "Please press submit"
                   else BMI(input$weight, input$height)})
        }
        )

#To run app, change to the directories with the ui.R and server.R files and type runApp( )