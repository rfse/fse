#' Aircraft Aliases
#'
#' Aliases of FSE aircraft.
#'
#' @template feed
#'
#' @export
fse_aircraft_aliases <- function(...) {
  fse_api(
    query="aircraft",
    search="aliases",
    ...
  )
}
