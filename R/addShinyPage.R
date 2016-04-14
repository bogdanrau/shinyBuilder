#' Add Shiny UI Components
addShinyPage <- function() {

  context <- rstudioapi::getActiveDocumentContext()

  ui <- miniUI::miniPage(
    miniUI::gadgetTitleBar("Add Shiny Page", right = miniUI::miniTitleBarButton("done", "Add", primary = TRUE)),
    miniUI::miniTabstripPanel(id = "pageTabs",
      miniUI::miniTabPanel(title = "Bootstrap", icon = shiny::icon("globe"), source("R/ui/page-boostrap.R")[1]),
      miniUI::miniTabPanel(title = "Navbar",  icon = shiny::icon("square"), source("R/ui/page-navbar.R")[1]),
      miniUI::miniTabPanel(title = "Sidebar", icon = shiny::icon("pause"), source("R/ui/page-sidebar.R")[1]),
      miniUI::miniTabPanel(title = "Dashboard", icon = shiny::icon("tachometer"))
      ),
      padding = 0
    )


    server <- function(input, output, session) {




      # When the Done button is clicked, return a value
      observeEvent(input$done, {
        observeEvent(input$pageTabs, {
          if (input$pageTabs == 'Bootstrap') {
            source("R/server/page-bootstrap.R", local = TRUE)
            pageProperties <- pageProperties()
            rstudioapi::insertText(paste0("bootstrapPage(title = '", pageProperties$title, "',
  theme = ", pageProperties$theme, ",
  ### Insert Code Here

)"))

          } else if (input$pageTabs == 'Navbar') {
            source("R/server/page-navbar.R", local = TRUE)
            pageProperties <- pageProperties()
            rstudioapi::insertText(paste0("navbarPage(title = '", pageProperties$title, "',
  id = ", pageProperties$id, ",
  position = '", pageProperties$position, "',
  header = ", pageProperties$header, ",
  footer = ", pageProperties$footer, ",
  inverse = ", pageProperties$inverse, ",
  collapsible = ", pageProperties$collapsible, ",
  fluid = ", pageProperties$fluid, ",
  theme = ", pageProperties$theme, ",
  windowTitle = ", pageProperties$windowTitle, ",
  ### Insert Code Here

)"))
          } else if (input$pageTabs == 'Sidebar') {
            print("Hello")
          }
        })


        stopApp()
      })
    }

    shiny::runGadget(ui, server, viewer = shiny::dialogViewer("Add Shiny Page"))
}
