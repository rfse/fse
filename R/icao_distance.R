#' Great circle distance between airports
#'
#' @param x character vector of ICAO codes
#' @param ... other arguments
#'

icao_distance <- function(x, ...) UseMethod("icao_distance")


#' @rdname icao_distance
#' @method icao_distance character
#'
#' @param unit unit of the computation
#'
icao_distance.character <- function(x, unit=c("nm", "km", "m"), ...) {
  test_icao(unique(x))
  unit <- match.arg(unit)

  # Create a list of arguments to geosphere::distVincentyEllipsoid() adjusting
  # the arguments to selected units.
  dve_args <- formals(geosphere::distVincentyEllipsoid)[c("a", "b")]
  dve_args <- switch(
    unit,
    nm = lapply(dve_args, "/", 1852),
    km = lapply(dve_args, "/", 1000),
    m = dve_args
  )
  dve_args$f <- with(dve_args, (a-b)/a)
  dve_args$p1 <- icao_data[
    match(toupper(x), icao_data$icao),
    c("lon", "lat")
    ]
  do.call(geosphere::distVincentyEllipsoid, dve_args)
}





icao_distance.default <- function(x, ...) {
  stop(
    "there is no `icao_distance()` method for `x` of class ",
    dQuote(data.class(x))
  )
}
