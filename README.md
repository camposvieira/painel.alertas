
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `{painel.alertas}`

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of `{painel.alertas}` like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Run

You can launch the application by running:

``` r
painel.alertas::run_app()
```

## About

You are reading the doc about version : 0.0.0.9000

This README has been compiled on the

``` r
Sys.time()
#> [1] "2025-03-06 14:28:13 -03"
```

Here are the tests results and package coverage:

``` r
devtools::check(quiet = TRUE)
#> ══ Documenting ═════════════════════════════════════════════════════════════════
#> ℹ Installed roxygen2 version (7.3.1) doesn't match required (7.1.1)
#> ✖ `check()` will not re-document this package
#> ── R CMD check results ────────────────────────── painel.alertas 0.0.0.9000 ────
#> Duration: 2.5s
#> 
#> ❯ checking whether package ‘painel.alertas’ can be installed ... ERROR
#>   See below...
#> 
#> ── Install failure ─────────────────────────────────────────────────────────────
#> 
#> * installing *source* package ‘painel.alertas’ ...
#> ** using staged installation
#> ** R
#> ** inst
#> ** byte-compile and prepare package for lazy loading
#> Error in library(shinydashboard) : 
#>   não há nenhum pacote chamado ‘shinydashboard’
#> Erro: não foi possível carregar o código R no pacote ‘painel.alertas’
#> Execução interrompida
#> ERROR: lazy loading failed for package ‘painel.alertas’
#> * removing ‘/tmp/Rtmp5eD3S3/file879c55990b01c/painel.alertas.Rcheck/painel.alertas’
#> 
#> 1 error ✖ | 0 warnings ✔ | 0 notes ✔
#> Error: R CMD check found ERRORs
```

``` r
covr::package_coverage()
#> painel.alertas Coverage: 0.00%
#> R/app_config.R: 0.00%
#> R/app_server.R: 0.00%
#> R/app_ui.R: 0.00%
#> R/golem_add_external_resources.R: 0.00%
#> R/golem_utils_server.R: 0.00%
#> R/golem_utils_ui.R: 0.00%
#> R/mod_home_page.R: 0.00%
#> R/mod_test1.R: 0.00%
#> R/run_app.R: 0.00%
```
