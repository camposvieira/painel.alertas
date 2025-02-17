#' home_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
# UI do módulo
# R/mod_home_page.R
# R/mod_home_page.R

library(shiny)
library(shinydashboard)
library(bslib) # Para temas modernos com Bootstrap 5

mod_home_page_ui <- function(id) {
  ns <- NS(id)
  tagList(
    # Navbar estilo Colorlib
    tags$nav(
      class = "navbar navbar-expand-lg navbar-dark bg-primary",
      style = "padding: 1rem;",
      tags$a(class = "navbar-brand", href = "#", "Painel de Alertas"),
      tags$div(
        class = "collapse navbar-collapse",
        tags$ul(
          class = "navbar-nav ml-auto",
          tags$li(class = "nav-item", tags$a(class = "nav-link", href = "#", "Início")),
          tags$li(class = "nav-item", tags$a(class = "nav-link", href = "#", "Sobre")),
          tags$li(class = "nav-item", tags$a(class = "nav-link", href = "#", "Contato"))
        )
      )
    ),

    # Hero Section
    div(
      class = "hero bg-light text-center py-5",
      style = "background-color:#f8f9fa;",
      h1("Bem-vindo ao Painel de Alertas"),
      p("Monitoramento de eventos em saúde pública em tempo real."),
      actionButton(ns("explore_btn"), "Explore Agora", class = "btn btn-primary btn-lg")
    ),

    # Cards de Métricas Principais
    fluidRow(
      column(
        width = 4,
        valueBoxOutput(ns("total_alerts"), width = 12)
      ),
      column(
        width = 4,
        valueBoxOutput(ns("new_cases"), width = 12)
      ),
      column(
        width = 4,
        valueBoxOutput(ns("critical_events"), width = 12)
      )
    ),

    # Rodapé
    tags$footer(
      class = "text-center text-white py-3",
      style = "background-color:#2c3e50;",
      "© 2025 - Painel de Alertas | Desenvolvido por Gabriel"
    )
  )
}

mod_home_page_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$total_alerts <- renderValueBox({
      valueBox(
        value = "1,234",
        subtitle = "Alertas Totais",
        icon = icon("bell"),
        color = "purple"
      )
    })

    output$new_cases <- renderValueBox({
      valueBox(
        value = "89",
        subtitle = "Novos Casos Hoje",
        icon = icon("heartbeat"),
        color = "red"
      )
    })

    output$critical_events <- renderValueBox({
      valueBox(
        value = "5",
        subtitle = "Eventos Críticos",
        icon = icon("exclamation-triangle"),
        color = "yellow"
      )
    })
  })
}


## To be copied in the UI
# mod_home_page_ui("home_page_1")

## To be copied in the server
# mod_home_page_server("home_page_1")
