
<!-- README.md is generated from README.Rmd. Please edit that file -->

# apollo13

<!-- badges: start -->

[![R-CMD-check](https://github.com/maelle/apollo13/workflows/R-CMD-check/badge.svg)](https://github.com/maelle/apollo13/actions)
[![Codecov test
coverage](https://codecov.io/gh/maelle/apollo13/branch/main/graph/badge.svg)](https://codecov.io/gh/maelle/apollo13?branch=main)
<!-- badges: end -->

The goal of apollo13 is to access R-universe API from R, for a tutorial.

## Installation

You can install the released version of apollo13 with:

``` r
# install.packages("remotes")
remotes::install_github("maelle/apollo13")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(apollo13)

## List packages in the rOpenSci R-universe
ropensci_universe_pkgs <- get_packages("ropensci")
head(ropensci_universe_pkgs)
#> [1] "AntWeb"            "BaseSet"           "CodeDepends"      
#> [4] "CoordinateCleaner" "DataPackageR"      "DataSpaceR"

## List maintainers in the ggseg R-universe
get_maintainers("ggseg")
#> # A tibble: 1 x 4
#>   name                   login       email                          packages    
#>   <chr>                  <chr>       <chr>                          <list>      
#> 1 Athanasia Mo Mowinckel Athanasiamo a.m.mowinckel@psykologi.uio.no <df [14 × 3…
```
