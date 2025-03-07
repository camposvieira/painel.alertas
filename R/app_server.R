#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
# R/app_server.R
# R/app_server.R
app_server <- function(input, output, session) {

  observe({
    bs4Dash::updateTabItems(session, "sidebar", selected = "tab_home")
  })

  mod_home_page_server("home_page")
  mod_panorama_server("panorama")
}
