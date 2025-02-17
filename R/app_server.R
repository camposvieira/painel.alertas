#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
# R/app_server.R
app_server <- function(input, output, session) {
  mod_home_page_server("home_page")

  output$info <- renderText({
    paste("A aba selecionada é:", input$tabs)
  })
}
