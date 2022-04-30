shinyServer(function(input, output) {
  output$g <- renderPlot({
    l <- strsplit(input$d, split = ",")
    l <- as.numeric(unlist(l))
    hist(l)
  })
  output$n <- renderText({
    l <- strsplit(input$d, split = ",")
    l <- as.numeric(unlist(l))
    paste("Size:", as.character(length(l)), sep=" ")
  })
  output$s <- renderText({
    l <- strsplit(input$d, split = ",")
    l <- as.numeric(unlist(l))
    paste("Standard Deviation:", sd(l), sep=" ")
  })
})
