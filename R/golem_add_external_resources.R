# R/golem_add_external_resources.R
golem_add_external_resources <- function() {
  golem::add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "www/custom.css"),
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "painel.alertas"
    )
  )
}
