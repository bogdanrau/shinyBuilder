# Shinydashboard values
pageProperties <- reactive({

  pageTitle = ifelse(
    input$dashboardPageTitle == '', 'My Page', input$dashboardPageTitle
  )

  dashboardSkin = input$dashboardSkin

  headerTitle = ifelse(
    input$dashboardHeaderTitle == '', 'My Dashboard', input$dashboardHeaderTitle
  )

  headerTitleWidth = ifelse(
    input$dashboardHeaderTitleWidth == '', 'NULL', paste0("'", input$dashboardHeaderTitleWidth, "px'")
  )

  headerDisable = input$dashboardHeaderDisable

  sidebarWidth = ifelse(
    input$dashboardSidebarWidth == '', 'NULL', paste0("'", input$dashboardSidebarWidth, "px'")
  )

  sidebarDisable = input$dashboardSidebarDisable

  return(list(title = pageTitle,
              skin = dashboardSkin,
              headerTitle = headerTitle,
              headerTitleWidth = headerTitleWidth,
              headerDisable = headerDisable,
              sidebarWidth = sidebarWidth,
              sidebarDisable = sidebarDisable))
})
