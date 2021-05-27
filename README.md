
<!-- README.md is generated from README.Rmd. Please edit that file -->

# apollo13

<!-- badges: start -->
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
```
