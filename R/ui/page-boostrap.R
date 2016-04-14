miniUI::miniContentPanel(
  shiny::fillRow(
    shiny::fillCol(
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Bootstrap Page</b>"))
      ),
      shiny::fillRow(
        shiny::fillCol("Shiny UI page that loads the CSS and Javascript for Bootstrap,
                 and has no content in the page body (other than what you provide).")
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Page Title:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The title of your page.'></i>")),
        shiny::fillCol(shiny::textInput("bsPageTitle", label = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Page Theme:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Alternative Bootstrap stylesheet (css file in your www directory).'></i> <small>(optional)</small>")),
        shiny::fillCol(shiny::textInput("bsPageTheme", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      )
    ),
    height = "240px"
  ),
  padding = 15
)
