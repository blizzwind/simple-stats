shinyUI(fluidPage(
  titlePanel("Simple Stats"),
  sidebarPanel(
    textInput("d", "Data (comma-separated):", value="1,3,5,7,9")
  ),
  mainPanel(
    plotOutput("g"),
    textOutput("n"),
    textOutput("s"),
  )
))
