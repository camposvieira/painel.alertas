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

# UI do módulo
mod_home_page_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      column(
        width = 3,
        wellPanel(
          h4("Filtros"),
          selectInput(ns("select_pkg"), "Selecione um Pacote:", choices = NULL),
          sliderInput(ns("date_range"), "Período:",
                      min = as.Date("2022-01-01"),
                      max = Sys.Date(),
                      value = c(as.Date("2023-01-01"), Sys.Date())),
          actionButton(ns("apply_filters"), "Aplicar Filtros", icon = icon("filter"))
        )
      ),
      column(
        width = 9,
        tabsetPanel(
          tabPanel(
            "Resumo",
            h4("Resumo Geral"),
            fluidRow(
              column(6, valueBoxOutput(ns("total_downloads"))),
              column(6, valueBoxOutput(ns("unique_users")))
            ),
            plotOutput(ns("download_trend"))
          ),
          tabPanel(
            "Detalhes",
            h4("Detalhes das Consultas"),
            DT::dataTableOutput(ns("detail_table"))
          )
        )
      )
    )
  )
}

# Server do módulo
mod_home_page_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Simulação de dados
    downloads <- reactive({
      Sys.sleep(0.5) # Simula processamento
      data.frame(
        data = seq.Date(from = as.Date("2023-01-01"), to = Sys.Date(), by = "day"),
        downloads = rpois(length(seq.Date(from = as.Date("2023-01-01"), to = Sys.Date(), by = "day")), lambda = 100)
      )
    })

    output$total_downloads <- renderValueBox({
      valueBox(
        value = sum(downloads()$downloads),
        subtitle = "Total de Downloads",
        icon = icon("download"),
        color = "blue"
      )
    })

    output$unique_users <- renderValueBox({
      valueBox(
        value = sample(500:1000, 1),
        subtitle = "Usuários Únicos",
        icon = icon("users"),
        color = "green"
      )
    })

    output$download_trend <- renderPlot({
      plot(downloads()$data, downloads()$downloads, type = "l", col = "blue",
           main = "Tendência de Downloads",
           xlab = "Data", ylab = "Downloads")
    })

    output$detail_table <- DT::renderDataTable({
      head(downloads(), 20)
    })
  })
}


## To be copied in the UI
# mod_home_page_ui("home_page_1")

## To be copied in the server
# mod_home_page_server("home_page_1")
