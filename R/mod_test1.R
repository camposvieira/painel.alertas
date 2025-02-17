#' test1 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_test1_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' test1 Server Functions
#'
#' @noRd 
mod_test1_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_test1_ui("test1_1")
    
## To be copied in the server
# mod_test1_server("test1_1")
