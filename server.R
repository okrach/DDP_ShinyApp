
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

daysleft=function(idate) {
  as.numeric(as.Date("2016-12-24")-as.Date(idate))
}
shinyServer(function(input, output) {
  output$odate=renderPrint({input$theDate})
  output$daystogo=renderPrint({daysleft(input$theDate)})
})
