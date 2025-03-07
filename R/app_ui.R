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
library(golem)
library(slickR)

app_ui <- function(request) {
  tagList(
    golem_add_external_resources(),

    bs4Dash::dashboardPage(
      title = "Painel de Alertas",
      fullscreen = TRUE,
      # Sidebar
      sidebar = bs4Dash::dashboardSidebar(
        status = "info",
        bs4Dash::bs4SidebarMenu(
          bs4Dash::bs4SidebarMenuItem(
            text = "Início",
            tabName = "tab_home",
            icon = icon("home")
          ),
          bs4Dash::bs4SidebarMenuItem(
            text = "Panorama",
            tabName = "tab_panorama",
            icon = icon("codepen")
          ),
          bs4Dash::bs4SidebarMenuItem(
            text = "Explorador",
            tabName = "tab_explora",
            icon = icon("binoculars")
          ),
          bs4Dash::bs4SidebarMenuItem(
            text = "Eventos de Atenção",
            tabName = "tab_eventos",
            icon = icon("exclamation-triangle")
          ),
          bs4Dash::bs4SidebarMenuItem(
            text = "Operacional",
            tabName = "tab_opera",
            icon = icon("gears")
          )
        )
      ),

      # Header
      header = bs4Dash::dashboardHeader(
        title = bs4Dash::dashboardBrand(
          title = "Painel de Alertas",
          image = "www/CIE_SIMBOLO.png"
        ),
        skin = "dark",
        border=TRUE
      ),

      # Body
      body = bs4Dash::dashboardBody(
        bs4Dash::bs4TabItems(
          bs4Dash::bs4TabItem(
            tabName = "tab_home",
            #h3("Salve")
            mod_home_page_ui("home_page")
          ),
          bs4Dash::bs4TabItem(
            tabName = "tab_panorama",
            mod_panorama_ui("panorama")
          )
        )
      ),

      controlbar = NULL
    )
  )

}
