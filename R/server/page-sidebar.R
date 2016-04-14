# Sidebar values
pageProperties <- reactive({

  pageTitle = ifelse(
    input$sidebarPageTitle == '', 'My Page', input$sidebarPageTitle
  )

  pageWindowTitle = ifelse(
    input$sidebarPageWindowTitle == '', pageTitle, paste0("'", input$navbarPageWindowTitle, "'")
  )

  pageSidebarWidth = ifelse(
    input$sidebarPageSidebarWidth == '', 4, input$sidebarPageSidebarWidth
  )

  pageMainWidth = ifelse(
    input$sidebarPageMainWidth == '', 8, input$sidebarPageMainWidth
  )



  return(list(title = pageTitle,
              windowTitle = pageWindowTitle,
              sidebarWidth = pageSidebarWidth,
              mainWidth = pageMainWidth
  ))
})
