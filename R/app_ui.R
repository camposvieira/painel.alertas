# R/app_ui.R

#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
# R/app_ui.R
# R/app_ui.R
app_ui <- function(request) {
  tagList(
    golem_add_external_resources(),
    fluidPage(
      titlePanel("Painel de Alertas em Saúde"),
      sidebarLayout(
        sidebarPanel(
          h4("Menu"),
          tabsetPanel(
            id = "tabs",
            tabPanel("Início", mod_home_page_ui("home_page"))
          )
        ),
        mainPanel(
          h3("Visualizações"),
          verbatimTextOutput("info")
        )
      )
    )
  )
}


