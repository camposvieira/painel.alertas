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

    # Barra de navegação horizontal
    tags$div(
      class = "navbar",
      tags$ul(
        lapply(c("Destaques", "Alertas", "Explorador de Dados", "Monitoramento"), function(label) {
          tags$li(tags$a(href = paste0("#", tolower(gsub(" ", "_", label))), label, id = paste0("link_", tolower(gsub(" ", "_", label)))))
        })
      )
    ),

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
    ),

    # Seção Alertas
    div(class = "section", id = "alertas",
        h2("Alertas"),
        p("Alertas críticos e eventos emergentes na saúde pública."),
        actionButton(ns("btn_alertas"), "Ver Alertas", class = "btn-custom")
    ),

    # Seção Explorador
    div(class = "section", id = "explorador",
        h2("Explorador de Dados"),
        p("Ferramentas interativas para analisar os dados de saúde."),
        actionButton(ns("btn_explorador"), "Explorar Agora", class = "btn-custom")
    ),

    # Seção Monitoramento
    div(class = "section", id = "monitoramento",
        h2("Monitoramento em Tempo Real"),
        p("Visualizações dinâmicas e acompanhamento contínuo."),
        actionButton(ns("btn_monitoramento"), "Acompanhar", class = "btn-custom")
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

    # Garantindo que o gráfico use o namespace corretamente
    output[[session$ns("plot1")]] <- renderPlot({
      print("Gráfico sendo gerado...")  # Verifique se aparece no console
      plot(1:10, 1:10)  # Exemplo simples de gráfico
    })

    observeEvent(input$btn_alertas, {
      showModal(modalDialog(title = "Alertas", "Lista de alertas mais recentes em saúde pública."))
    })

    observeEvent(input$btn_explorador, {
      showModal(modalDialog(title = "Explorador", "Ferramenta de exploração de dados interativos."))
    })

    observeEvent(input$btn_monitoramento, {
      showModal(modalDialog(title = "Monitoramento", "Painel de monitoramento atualizado em tempo real."))
    })
  })
}

## To be copiado no UI
# mod_home_page_ui("home_page_1")

## To be copiado no server
# mod_home_page_server("home_page_1")
