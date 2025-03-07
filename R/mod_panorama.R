#' panorama UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_panorama_ui <- function(id) {
  ns <- NS(id)
  tagList(
    bs4Dash::box("Alertas", status="info", solidHeader = T)
  )
}

#' panorama Server Functions
#'
#' @noRd
mod_panorama_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_panorama_ui("panorama_1")

## To be copied in the server
# mod_panorama_server("panorama_1")
