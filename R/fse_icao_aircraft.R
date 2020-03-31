#' ICAO listing of aircraft
#'
#' List aircraft at location.
#'
#' @param icao airport ICAO code
#'
#' @templateVar feedname icao_fbos
#' @template feed
#'
#' @export
fse_icao_aircraft <- function(icao, ...) {
  fse_api(
    query="icao",
    search="aircraft",
    icao = icao,
    ...
  )$content
}
