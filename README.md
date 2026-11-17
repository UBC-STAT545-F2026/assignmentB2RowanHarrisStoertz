
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Assignment B2

## Tip calculator package

This package contains the “Tip calculator” function, which calculates
the total price including a tip, given a subtotal and chosen tip
percentage.

## Installation

The `assignmentB2RowanHarrisStoertz.git`package can be installed from
[GitHub](https://github.com/) with:

``` r
devtools::install_github("rowanharrisstoertz/assignmentB2RowanHarrisStoertz.git")
```

## Example

The following code shows three examples of how to use the tip calculator
function.

``` r

library(assignmentB2RowanHarrisStoertz.git)

#calculate the total for a $41.25 subtotal with a 20% tip
calculate_tip(41.25, 20)
#> [1] 49.5

#calculate the total for a $115 subtotal with a 15% tip
calculate_tip(115, 15)
#> [1] 132.25

#calculate the totals for both a $42 subtotal with a 20% tip and a $35 subtotal with an 18% tip
calculate_tip(c(42, 35), c(20, 18))
#> [1] 50.4 41.3
```
