miniUI::miniContentPanel(
  shiny::fillRow(
    shiny::fillCol(
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<h3>Sidebar Page</h3>"))
      ),
      shiny::fillRow(
        shiny::fillCol("Create a Shiny UI that contains a header with the application title,
                       a sidebar for input controls, and a main area for output.")
      ),
      shiny::fillRow(shiny::HTML("<br /><b>Header Panel:</b>")),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Page Title:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The title of your page.'></i>")),
        shiny::fillCol(shiny::textInput("sidebarPageTitle", label = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Window Title:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The title that should be displayed by the browser window. Useful if title is not a string.'></i>")),
        shiny::fillCol(shiny::textInput("sidebarPageWindowTitle", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(shiny::HTML("<br /><b>Sidebar Panel:</b>")),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Width:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Width of the sidebar panel. For fluid layouts, this is out of 12 total units; for fixed layouts, it is out of whatever wdith of the sidebar's parent column is.'></i>")),
        shiny::fillCol(shiny::textInput("sidebarPageSidebarWidth", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(shiny::HTML("<br /><b>Main Panel:</b>")),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Width:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The width of the main panel. For fluid layouts this is out of 12 total units; for fixed layouts it is out of whatever the width of the main panel's parent column is.'></i>")),
        shiny::fillCol(shiny::textInput("sidebarPageMainWidth", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      )
    ),
    height = "440px"
  ),
  padding = 15
)
