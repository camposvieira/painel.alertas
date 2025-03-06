########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----

golem::fill_desc(
  pkg_name = "painel.alertas", # The name of the golem package containing the app (typically lowercase, no underscore or periods)
  pkg_title = "Painel de Alertas CIE", # What the Package Does (One Line, Title Case, No Period)
  pkg_description = "Painel de Alertas do Centro de Inteligência Epidemiológica da SMS Rio.", # What the package does (one paragraph).
  authors = c(
    person(
      given = "Gabriel", # Your First Name
      family = "Campos Vieira", # Your Last Name
      email = "camposvieiragabriel@gmail.com", # Your email
      role = c("aut", "cre") # Your role (here author/creator)
    ),
    person(
      given = "João",
      family = "Morais",
      email = "joao.tlp@gmail.com"
    )
  ),
  repo_url = "https://github.com/camposvieira/painel.alertas", # The URL of the GitHub repo (optional),
  pkg_version = "0.0.0.9000", # The version of the package containing the app
  set_options = TRUE # Set the global golem options
)

## Install the required dev dependencies ----
golem::install_dev_deps()

## Create Common Files ----
usethis::use_mit_license()
golem::use_readme_rmd(open = FALSE)
devtools::build_readme()
usethis::use_code_of_conduct(contact = "joao.tlp@gmail.com")
usethis::use_news_md(open = FALSE)

## Init Testing Infrastructure ----
## Create a template for tests
golem::use_recommended_tests()
spelling::spell_check_setup(lang = "pt-BR")
## Favicon ----

golem::use_favicon(path = "inst/app/www/cie.ico") # path = "path/to/ico". Can be an online file.

## Use git ----
usethis::use_git()

# go to dev/02_dev.R
rstudioapi::navigateToFile("dev/02_dev.R")
