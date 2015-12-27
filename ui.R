
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("DDP-Days to Next Christmas"),
    sidebarPanel(
      dateInput("theDate","Specify date:",min = "2015-12-27",max="2016-12-24",value="2015-12-27")
    ),
    mainPanel(
      h3("Remaining days calculation"),
      h4("You entered: "), verbatimTextOutput("odate"),
      h4("Christmas 2016 is this many days ahead of you: "), verbatimTextOutput("daystogo")
    )
  )
)