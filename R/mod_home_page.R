library(shiny)
library(shinydashboard)
library(bslib)


# UI do módulo
mod_home_page_ui <- function(id) {
  ns <- NS(id)
  tagList(
    # Carregar o CSS personalizado e o script JavaScript
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"),
      tags$link(rel = "stylesheet", type = "text/css", href = "https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"),
      tags$script(src = "https://code.jquery.com/jquery-3.6.0.min.js"),
      tags$script(src = "https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js")
    ),
    h2("Welcome to the Home Page"),
    # Seção Destaques
    div(class = "section", id = "destaques",
        h2("Destaques"),
        p("Resumo das principais informações e métricas em tempo real."),
        div(class = "autoplay",
            div("Notícia 1: Descoberta importante em saúde pública!", plotOutput(ns("plot1"), height = "350px")),
            div("Notícia 2: Diarreia em alta!"),
            div("Notícia 3: Efeitos do calor em crescimento!"),
            div("Notícia 4: Queixas sobre pomadas nos olhos aumentaram!"),
            div("Notícia 5: Covid volta a subir.")
        ),
        actionButton(ns("btn_destaques"), "Saiba Mais", class = "btn-custom")
    )
  )


}

# Server do módulo
mod_home_page_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Use session$ns diretamente dentro do contexto do módulo
    # ns <- session$ns  # Atribui a função ns() para o contexto do módulo

    observeEvent(input$btn_destaques, {
      showModal(modalDialog(title = "Destaques", "Aqui estão os principais destaques de hoje!"))
    })


  })
}
