observeEvent(input$pageTabs, {
  if (input$pageTabs == 'Bootstrap') {
    source("R/server/page-bootstrap.R", local = TRUE)
  } else if (input$pageTabs == 'Navbar') {
    source("R/server/page-navbar.R", local = TRUE)
  }
})
