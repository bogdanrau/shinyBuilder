# Bootstrap values
pageProperties <- reactive({

  pageTitle = ifelse(
    input$bsPageTitle == '', 'My Page', input$bsPageTitle
  )

  pageTheme = ifelse(
    input$bsPageTheme == '', 'NULL', paste0("'", input$bsPageTheme, "'")
  )

  return(list(title = pageTitle, theme = pageTheme))
})
