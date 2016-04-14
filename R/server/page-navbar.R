# Navbar values
pageProperties <- reactive({

  pageTitle = ifelse(
    input$navbarPageTitle == '', 'My Page', input$navbarPageTitle
  )

  pageId = ifelse(
    input$navbarPageId == '', 'NULL', input$navbarPageId
  )

  pagePosition = input$navbarPagePosition

  pageHeader = ifelse(
    input$navbarPageHeader == '', 'NULL', paste0("'", input$navbarPageHeader, "'")
  )

  pageFooter = ifelse(
    input$navbarPageFooter == '', 'NULL', paste0("'", input$navbarPageFooter, "'")
  )

  pageInverse = input$navbarPageInverse

  pageCollapsible = input$navbarPageCollapsible

  pageFluid = input$navbarPageFluid

  pageTheme = ifelse(
    input$navbarPageTheme == '', 'NULL', paste0("'", input$navbarPageTheme, "'")
  )

  pageWindowTitle = ifelse(
    input$navbarPageWindowTitle == '', pageTitle, paste0("'", input$navbarPageWindowTitle, "'")
  )



  return(list(title = pageTitle,
              id = pageId,
              position = pagePosition,
              header = pageHeader,
              footer = pageFooter,
              inverse = pageInverse,
              collapsible = pageCollapsible,
              fluid = pageFluid,
              theme = pageTheme,
              windowTitle = pageWindowTitle
))
})
