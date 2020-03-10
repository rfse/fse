#' Aircraft Aliases
#'
#' Aliases of FSE aircraft.
#'
#' @templateVar feedname aircraft_aliases
#' @template feed
#'
#' @export
fse_aircraft_aliases <- function(...) {
  fse_api(
    query="aircraft",
    search="aliases",
    ...
  )$content
}
