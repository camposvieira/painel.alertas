library(shiny)
library(shinydashboard)
library(bslib)


# UI do módulo
mod_home_page_ui <- function(id) {
  ns <- NS(id)
  tagList(

    fluidRow(
      style = "padding: 5px; margin: 0; display: flex; justify-content: center;",

      column(3,
             p(
               bs4Dash::dashboardBadge("Badge 1", color = "danger")
               # bs4Dash::bs4Badge(
               #   text = ("12 messages"),
               #   color = "info",
               #   rounded = TRUE,
               #   style = "font-size: 14px; padding: 5px 10px; margin: 2px;"
               # )
             )
      ),
      column(3,
             bs4Dash::bs4Badge(
               text = textOutput(ns("warnings")),
               color = "warning",
               rounded = TRUE,
               style = "font-size: 14px; padding: 5px 10px; margin: 2px;"
             )
      ),
      column(3,
             bs4Dash::bs4Badge(
               text = textOutput(ns("errors")),
               color = "danger",
               rounded = TRUE,
               style = "font-size: 14px; padding: 5px 10px; margin: 2px;"
             )
      ),
      column(3,
             bs4Dash::bs4Badge(
               text = textOutput(ns("success")),
               color = "success",
               rounded = TRUE,
               style = "font-size: 14px; padding: 5px 10px; margin: 2px;"
             )
      )

    ),


    fluidRow(
      column(8,
             bs4Dash::box(
               title = "Destaques CIE",
               icon = icon("newspaper"),
               status="info",
               solidHeader = TRUE,
               width=NULL,

               slickR::slickROutput(ns("news_carousel"), width = "100%", height = "100%")
             )
      ),
      column(4,
             bs4Dash::box(
               title = "Gráfico de quadrantes",
               icon = icon("th-large"),
               status="info",
               solidHeader = TRUE,
               width=NULL,
               plotly::plotlyOutput(ns("plot_quadrantes"))
             )
      )
    ),

    fluidRow(

      column(6,
             bs4Dash::box(
               title = "Ocorrências em tempo real",
               icon = icon("podcast"),
               status = "info",
               solidHeader = TRUE,
               width = NULL
             )
      ),
      column(6,
             bs4Dash::box(
               title = "Fardo nas unidades",
               icon = icon("hospital"),
               status = "info",
               solidHeader = TRUE,
               width = NULL
             )
      )
    )
  )


}

# Server do módulo
mod_home_page_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Use session$ns diretamente dentro do contexto do módulo
    ns <- session$ns  # Atribui a função ns() para o contexto do módulo

    observeEvent(input$btn_destaques, {
      showModal(modalDialog(title = "Destaques", "Aqui estão os principais destaques de hoje!"))
    })

    random_manchete <- function() {
      readLines("inst/app/www/manchetes_random.txt")[sample(1:6, 1)]
    }

    output$messages <- renderText({ paste(12, "New Messages") })
    output$warnings <- renderText({ paste(3, "Warnings") })
    output$errors   <- renderText({ paste(1, "Error") })
    output$success  <- renderText({ paste(25, "Success") })

    output$news_carousel <- slickR::renderSlickR({


      slides <- lapply(1:5, function(i) {

        htmltools::tags$div(
          style = "text-align: center; padding: 10px;",
          h3(random_manchete()),
          shinipsum::random_ggplot() %>%
            show() %>%
            svglite::xmlSVG(standalone = T, width = 6, height = 3) %>%
            as.character() %>%
            HTML(),
          br(),
          actionButton(
            paste0("news_button_", i),
            "Ver mais",
            icon = icon("mail-forward"),
            class = "btn-info"
          )
        )
      })

      slickR::slickR(slides) +
        slickR::settings(dots = TRUE, autoplay = TRUE, autoplaySpeed = 10000)
    })


    output$plot_quadrantes <- plotly::renderPlotly({
      shinipsum::random_ggplotly()
    })

  })
}
