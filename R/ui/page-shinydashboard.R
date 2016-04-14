miniUI::miniContentPanel(
  shiny::fillRow(
    shiny::fillCol(
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<h3>Shinydashboard Page</h3>"))
      ),
      shiny::fillRow(
        shiny::fillCol("Create a dashboard page built on the AdminLTE theme.")
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Window Title:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Title to display in the browser title bar.'></i>")),
        shiny::fillCol(shiny::textInput("dashboardPageTitle", label = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Dashboard Skin:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='A color theme.'></i>")),
        shiny::fillCol(shiny::selectInput("dashboardSkin", label = NULL, choices = c("blue", "black", "purple", "green", "red", "yellow"), width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(HTML("<br /><b>Dashboard Header:</b>")),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Dashboard Title:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The title of your page - will show in the header bar.'></i>")),
        shiny::fillCol(shiny::textInput("dashboardHeaderTitle", label = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Title Width:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Width of the title area.'></i>")),
        shiny::fillCol(shiny::textInput("dashboardHeaderTitleWidth", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Disable:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='If TRUE, do not display the header bar.'></i>")),
        shiny::fillCol(shiny::radioButtons("dashboardHeaderDisable", label = NULL, choices = c("TRUE", "FALSE"), selected = "FALSE", inline = TRUE)),
        flex = c(2,6)
      ),
      shiny::fillRow(shiny::HTML("<br /><b>Dashboard Sidebar:</b>")),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Sidebar Width:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Width of the sidebar. Width in pixels, or a string that specifies the width in CSS units.'></i>")),
        shiny::fillCol(shiny::textInput("dashboardSidebarWidth", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Disable:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='If TRUE, do not display the sidebar.'></i>")),
        shiny::fillCol(shiny::radioButtons("dashboardSidebarDisable", label = NULL, choices = c("TRUE", "FALSE"), selected = "FALSE", inline = TRUE)),
        flex = c(2,6)
      )
    ),
    height = "540px"
  ),
  padding = 15
)
