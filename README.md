
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `{painel.alertas}`

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/camposvieira/painel.alertas/branch/master/graph/badge.svg)](https://app.codecov.io/gh/camposvieira/painel.alertas?branch=master)
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
#> [1] "2025-03-06 16:12:08 -03"
```

Here are the tests results and package coverage:

``` r
devtools::check(quiet = TRUE)
#> ℹ Loading painel.alertas
#> 
#> Anexando pacote: 'bslib'
#> 
#> 
#> O seguinte objeto é mascarado por 'package:utils':
#> 
#>     page
#> 
#> 
#> 
#> Anexando pacote: 'shinydashboard'
#> 
#> 
#> O seguinte objeto é mascarado por 'package:graphics':
#> 
#>     box
#> ── R CMD check results ────────────────────────── painel.alertas 0.0.0.9000 ────
#> Duration: 25.5s
#> 
#> ❯ checking tests ...
#>   See below...
#> 
#> ❯ checking code files for non-ASCII characters ... WARNING
#>   Found the following file with non-ASCII characters:
#>     R/mod_home_page.R
#>   Portable packages must use only ASCII characters in their R code and
#>   NAMESPACE directives, except perhaps in comments.
#>   Use \uxxxx escapes for other characters.
#>   Function ‘tools::showNonASCIIfile’ can help in finding non-ASCII
#>   characters in files.
#> 
#> ❯ checking for unstated dependencies in examples ... OK
#>    WARNING
#>   ‘qpdf’ is needed for checks on size reduction of PDFs
#> 
#> ❯ checking for future file timestamps ... NOTE
#>   unable to verify current time
#> 
#> ❯ checking DESCRIPTION meta-information ... NOTE
#>   Campo Authors@R fornece pessoas sem papéis:
#>     João Morais <joao.tlp@gmail.com>
#> 
#> ❯ checking package subdirectories ... NOTE
#>   Problems with news in ‘NEWS.md’:
#>   No news entries found.
#> 
#> ❯ checking dependencies in R code ... NOTE
#>   Namespace no campo Imports não importado de: ‘shinydashboard’
#>     All declared Imports should be used.
#> 
#> ❯ checking R code for possible problems ... NOTE
#>   golem_add_external_resources: no visible global function definition for
#>     ‘favicon’
#>   golem_add_external_resources: no visible global function definition for
#>     ‘bundle_resources’
#>   Undefined global functions or variables:
#>     bundle_resources favicon
#> 
#> ── Test failures ───────────────────────────────────────────────── testthat ────
#> 
#> > # This file is part of the standard setup for testthat.
#> > # It is recommended that you do not modify it.
#> > #
#> > # Where should you do additional test configuration?
#> > # Learn more about the roles of various files in:
#> > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
#> > # * https://testthat.r-lib.org/articles/special-files.html
#> > 
#> > library(testthat)
#> > library(painel.alertas)
#> > 
#> > test_check("painel.alertas")
#> Loading required package: shiny
#> [1] "Gráfico sendo gerado..."
#> [ FAIL 1 | WARN 0 | SKIP 1 | PASS 13 ]
#> 
#> ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
#> • rlang_is_interactive() is not TRUE (1): 'test-golem-recommended.R:72:5'
#> 
#> ══ Failed tests ════════════════════════════════════════════════════════════════
#> ── Error ('test-golem-recommended.R:2:3'): app ui ──────────────────────────────
#> Error in `favicon()`: could not find function "favicon"
#> Backtrace:
#>     ▆
#>  1. └─painel.alertas:::app_ui() at test-golem-recommended.R:2:3
#>  2.   ├─htmltools::tagList(...)
#>  3.   │ └─rlang::dots_list(...)
#>  4.   └─painel.alertas:::golem_add_external_resources()
#>  5.     └─tags$head(...)
#>  6.       └─rlang::dots_list(...)
#> 
#> [ FAIL 1 | WARN 0 | SKIP 1 | PASS 13 ]
#> Error: Test failures
#> Execution halted
#> 
#> 1 error ✖ | 2 warnings ✖ | 5 notes ✖
#> Error: R CMD check found ERRORs
```

``` r
covr::package_coverage()
#> Error: Failure in `/tmp/RtmpLQM6Xk/R_LIBS8ac97137ae80a/painel.alertas/painel.alertas-tests/testthat.Rout.fail`
#> ════════════════════════════════════════════════════════════════
#> ── Error ('test-golem-recommended.R:2:3'): app ui ──────────────────────────────
#> Error in `favicon()`: could not find function "favicon"
#> Backtrace:
#>     ▆
#>  1. └─painel.alertas:::app_ui() at test-golem-recommended.R:2:3
#>  2.   ├─htmltools::tagList(...)
#>  3.   │ └─rlang::dots_list(...)
#>  4.   └─painel.alertas:::golem_add_external_resources()
#>  5.     └─tags$head(...)
#>  6.       └─rlang::dots_list(...)
#> 
#> [ FAIL 1 | WARN 0 | SKIP 1 | PASS 13 ]
#> Error: Test failures
#> Execution halted
```
