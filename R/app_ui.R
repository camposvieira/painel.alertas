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

app_ui <- function(request) {
  tagList(
    golem_add_external_resources(),

    bs4Dash::dashboardPage(
      title = "Painel de Alertas",
      fullscreen = TRUE,
      # Sidebar
      sidebar = bs4Dash::dashboardSidebar(
        bs4Dash::bs4SidebarMenu(
          bs4Dash::bs4SidebarMenuItem(
            text = "Home",
            tabName = "home",
            icon = icon("home")
          ),
          bs4Dash::bs4SidebarMenuItem(
            text = "Settings",
            tabName = "settings",
            icon = icon("cogs")
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
            tabName = "home",
            h2("Welcome to the Home Page"),
            p("This is a `{bs4Dash}` dashboard integrated with `{golem}`.")
          ),
          bs4Dash::bs4TabItem(
            tabName = "settings",
            h2("Settings"),
            p("Customize your preferences here.")
          )
        )
      ),

      controlbar = NULL
    )
  )

}
