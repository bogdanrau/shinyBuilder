#' Add Shiny Input Components
#' @import shinydashboard
#' @import shiny
#' @import miniUI
#' @import rstudioapi
#' @export
addShinyInput <- function() {

  context <- rstudioapi::getActiveDocumentContext()

  ui <- miniUI::miniPage(
    miniUI::gadgetTitleBar("Add Shiny Input", right = miniUI::miniTitleBarButton("done", "Add", primary = TRUE)),
    miniUI::miniTabstripPanel(id = "inputTabs",
                              miniUI::miniTabPanel(title = "Text", icon = shiny::icon("font"), source("R/ui/input-text.R")[1]),
                              miniUI::miniTabPanel(title = "Numeric",  icon = shiny::icon("hashtag"), source("R/ui/input-numeric.R")[1]),
                              miniUI::miniTabPanel(title = "Select", icon = shiny::icon("mouse-pointer"), source("R/ui/input-select.R")[1]),
                              miniUI::miniTabPanel(title = "Checkbox", icon = shiny::icon("check-square"), source("R/ui/input-checkbox.R")[1]),
                              miniUI::miniTabPanel(title = "Date", icon = shiny::icon("calendar"), source("R/ui/input-date.R")[1]),
                              miniUI::miniTabPanel(title = "Radio", icon = shiny::icon("dot-circle-o"), source("R/ui/input-radio.R")[1]),
                              miniUI::miniTabPanel(title = "Slider", icon = shiny::icon("sliders"), source("R/ui/input-slider.R")[1]),
                              miniUI::miniTabPanel(title = "File", icon = shiny::icon("file-o"), source("R/ui/input-file.R")[1]),
                              miniUI::miniTabPanel(title = "Button", icon = shiny::icon("square"), source("R/ui/input-button.R")[1])
    ),
    padding = 15
  )


  server <- function(input, output, session) {




    # When the Done button is clicked, return a value
    observeEvent(input$done, {
      # observeEvent(input$pageTabs, {
      #   if (input$pageTabs == 'Bootstrap') {
      #     source("R/server/page-bootstrap.R", local = TRUE)
      #     pageProperties <- pageProperties()
      #     rstudioapi::insertText(paste0("bootstrapPage(title = '", pageProperties$title, "',
      #                                   theme = ", pageProperties$theme, ",
      #                                   ### Insert Code Here
      #
      #     )"))
      #
      #   } else if (input$pageTabs == 'Navbar') {
      #     source("R/server/page-navbar.R", local = TRUE)
      #     pageProperties <- pageProperties()
      #     rstudioapi::insertText(paste0("navbarPage(title = '", pageProperties$title, "',
      #                                   id = ", pageProperties$id, ",
      #                                   position = '", pageProperties$position, "',
      #                                   header = ", pageProperties$header, ",
      #                                   footer = ", pageProperties$footer, ",
      #                                   inverse = ", pageProperties$inverse, ",
      #                                   collapsible = ", pageProperties$collapsible, ",
      #                                   fluid = ", pageProperties$fluid, ",
      #                                   theme = ", pageProperties$theme, ",
      #                                   windowTitle = ", pageProperties$windowTitle, ",
      #                                   ### Insert Code Here
      #
      #     )"))
      #     } else if (input$pageTabs == 'Sidebar') {
      #       source("R/server/page-sidebar.R", local = TRUE)
      #       pageProperties <- pageProperties()
      #       rstudioapi::insertText(paste0("pageWithSidebar(
      #                                     headerPanel(title = '", pageProperties$title, "'),
      #                                     sidebarPanel(width = ", pageProperties$sidebarWidth, ",
      #                                     ### Insert Sidebar Code Here
      #
      #                                     ),
      #                                     mainPanel(width = ", pageProperties$mainWidth, ",
      #                                     ### Insert Main Code Here
      #
      #                                     )
      #       )"))
      #     } else if (input$pageTabs == 'Dashboard') {
      #       source("R/server/page-shinydashboard.R", local = TRUE)
      #       pageProperties <- pageProperties()
      #       rstudioapi::insertText(paste0("dashboardPage(title = '", pageProperties$title, "',
      #                                     skin = '", pageProperties$skin, "',
      #                                     dashboardHeader(title = '", pageProperties$headerTitle, "',
      #                                     titleWidth = ", pageProperties$headerTitleWidth, ",
      #                                     disable = ", pageProperties$headerDisable, ",
      #                                     ### Insert header code here
      #
      #                                     ),
      #                                     dashboardSidebar(width = ", pageProperties$sidebarWidth, ",
      #                                     disable = ", pageProperties$sidebarDisable, ",
      #                                     ### Insert sidebar code here
      #
      #                                     ),
      #                                     dashboardBody(
      #                                     ### Insert body code here
      #
      #                                     )"))
      #     }
      #   })
      #

        stopApp()
      })
    }

    shiny::runGadget(ui, server, viewer = shiny::dialogViewer("Add Shiny Input"))
}
