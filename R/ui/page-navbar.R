miniUI::miniContentPanel(
shiny::fillRow(
  shiny::fillCol(
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Navbar Page</b>"))
    ),
    shiny::fillRow(
      shiny::fillCol("Create a page that contains a top level navigation bar that can be used to toggle a set of tabPanel elements.")
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Page Title:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The title of your page.'></i>")),
      shiny::fillCol(shiny::textInput("navbarPageTitle", label = NULL, width = "100%")),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Page Id:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Can use input$ id in server logic to determine which of the current tabs is active.'></i> <small>(optional)</small>")),
      shiny::fillCol(shiny::textInput("navbarPageId", label = NULL, width = "100%")),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Position:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Determines whether the navbar should have normal scrilling behavior (static-top), pinned at the top (fixed-top) or pinned at the bottom (fixed-bottom).'></i>")),
      shiny::fillCol(shiny::radioButtons("navbarPagePosition", label = NULL, choices = c("static-top", "fixed-top", "fixed-bottom"), inline = TRUE)),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Page Header:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Tag or list of tags to display as a common header above all tabPanels.'></i> <small>(optional)</small>")),
      shiny::fillCol(shiny::textInput("navbarPageHeader", label = NULL, width = "100%")),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Page Footer:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Tag or list of tags to display as a common footer below all tabPanels.'></i> <small>(optional)</small>")),
      shiny::fillCol(shiny::textInput("navbarPageFooter", label = NULL, width = "100%")),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Inverse:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='TRUE to use a dark background and light text for the navigation bar.'></i>")),
      shiny::fillCol(shiny::radioButtons("navbarPageInverse", label = NULL, choices = c("TRUE", "FALSE"), inline = TRUE, selected = 'FALSE')),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Collapsible:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='TRUE to automatically collapse navigation elements into a menu.'></i>")),
      shiny::fillCol(shiny::radioButtons("navbarPageCollapsible", label = NULL, choices = c("TRUE", "FALSE"), inline = TRUE, selected = 'FALSE')),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Fluid:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='TRUE to use a fluid layout. FALSE to use a fixed layout.'></i>")),
      shiny::fillCol(shiny::radioButtons("navbarPageFluid", label = NULL, choices = c("TRUE", "FALSE"), inline = TRUE, selected = 'TRUE')),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Page Theme:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Alternative Bootstrap stylesheet (css file in your www directory).'></i> <small>(optional)</small>")),
      shiny::fillCol(shiny::textInput("navbarPageTheme", label = NULL, width = "100%")),
      flex = c(2,6)
    ),
    shiny::fillRow(
      shiny::fillCol(shiny::HTML("<b>Window Title:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Title to be displayed in the browser window. Useful if title is not a string.'></i> <small>(optional)</small>")),
      shiny::fillCol(shiny::textInput("navbarPageWindowTitle", label = NULL, width = "100%")),
      flex = c(2,6)
    )
  ),
  height = "600px"
),
padding = 15
)
