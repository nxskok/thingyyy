
<!-- README.md is generated from README.Rmd. Please edit that file -->

# thingyyy

Two random functions, testing my ability to make a package.

## Installation

You can install thingyyy from github with:

``` r
# install.packages("devtools")
devtools::install_github("nxskok/thingyyy")
```

## Example

There are two functions.

The first one adds one to anything you feed it, if it can:

``` r
library("thingyyy")
add_one(3)
#> [1] 4
add_one(c(2,4))
#> [1] 3 5
add_one("x")
#> Error in x + 1: non-numeric argument to binary operator
```

The second one takes a data frame with a quantitative column `x`, a
categorical column `g`, and something else that will say what goes in
which row, and spreads it into wide format:

``` r
dd = tibble::tribble(
~r, ~x, ~g,
1, 10, "a",
2, 12, "a",
3, 14, "a",
1, 15, "b",
2, 17, "b",
3, 19, "b"
)
dd
#> # A tibble: 6 x 3
#>       r     x g    
#>   <dbl> <dbl> <chr>
#> 1     1    10 a    
#> 2     2    12 a    
#> 3     3    14 a    
#> 4     1    15 b    
#> 5     2    17 b    
#> 6     3    19 b
my_spread(dd)
#> # A tibble: 3 x 3
#>       r     a     b
#>   <dbl> <dbl> <dbl>
#> 1     1    10    15
#> 2     2    12    17
#> 3     3    14    19
```
