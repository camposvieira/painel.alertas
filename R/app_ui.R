# R/app_ui.R

#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
# R/app_ui.R
# R/app_ui.R
# R/app_ui.R
library(shiny)
library(bslib)

app_ui <- function(request) {
  tagList(
    golem_add_external_resources(),
    fluidPage(
      theme = bslib::bs_theme(bootswatch = "minty"), # Tema moderno
      mod_home_page_ui("home_page")
    )
  )
}
