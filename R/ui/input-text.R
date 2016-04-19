miniUI::miniContentPanel(
  shiny::fillRow(
    shiny::fillCol(
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<h3>Text Input</h3>"))
      ),
      shiny::fillRow(
        shiny::fillCol("Creates an input control for entry of unstructured text values.")
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Input Id:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The input slot that will be used to access the value.'></i>")),
        shiny::fillCol(shiny::textInput("inputTextId", label = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Input Label:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Display label for the control. Can be blank for no label.")),
        shiny::fillCol(shiny::textInput("inputTextLabel", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Initial Value:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='Initial value. Can be left blank.")),
        shiny::fillCol(shiny::textInput("inputTextInitialValue", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      ),
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Width:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='The width of the input. eg. 400px or 100%.")),
        shiny::fillCol(shiny::textInput("inputTextWidth", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      )
      ,
      shiny::fillRow(
        shiny::fillCol(shiny::HTML("<b>Placeholder:</b> <i class='fa fa-info-circle' data-toggle='tooltip' data-placement='right' title='A character string giving the user a hint as to what can be entered into the control. Internet Explorer 8 and 9 do not support this option.")),
        shiny::fillCol(shiny::textInput("inputTextPlaceholder", label = NULL, value = NULL, width = "100%")),
        flex = c(2,6)
      )
    ),
    height = "440px"
  ),
  padding = 15
)
