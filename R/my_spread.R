#' Simple spread
#'
#' @param d data frame containing columns named `x`` (quantitative) and `g`` (categorical)
#'
#' @return "wide" data frame with `g` spread, carrying along the values of `x`. There needs to be another variable indicating which row should contain the result.
#' @export
#'
#' @examples
#' requireNamespace("tibble", quietly = TRUE)
#' dd=tibble::tribble(
#' ~r, ~x, ~g,
#' 1, 10, "a",
#' 2, 12, "a",
#' 3, 14, "a",
#' 1, 15, "b",
#' 2, 17, "b",
#' 3, 19, "b"
#' )
#' my_spread(dd)
my_spread=function(d) {
  d %>% tidyr::spread("g", "x")
}
