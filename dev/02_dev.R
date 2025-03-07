###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
usethis::use_package("shinydashboard")
usethis::use_package("golem")
usethis::use_package("bs4Dash")
usethis::use_package("slickR")
usethis::use_package("ggplot2")
usethis::use_package("plotly")

attachment::att_amend_desc()

## Add modules ----
golem::add_module(name = "home_page", with_test = TRUE)
golem::add_module(name = "panorama", with_test = TRUE)

## Add helper functions ----

## External resources
golem::add_js_file("script")
golem::add_js_handler("handlers")
golem::add_css_file("custom")
golem::add_sass_file("custom")
#golem::add_any_file("file.json")

## Tests ----

# Documentation

## Vignette ----
usethis::use_vignette("painelalertas")
devtools::build_vignettes()

## Code Coverage----
## Set the code coverage service ("codecov" or "coveralls")
usethis::use_coverage()

# Create a summary readme for the testthat subdirectory
covrpage::covrpage()

rstudioapi::navigateToFile("dev/03_deploy.R")
