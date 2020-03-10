#' ICAO Jobs From
#'
#' Jobs from specific airport.
#'
#' @templateVar feedname icao_jobs_from
#' @template feed
#'
#' @export
fse_icao_jobs_from <- function(icaos, ...) {
  stopifnot(is.character(icaos))
  icaos <- paste(icaos, collapse="-")
  fse_api(
    query="icao",
    search="jobsfrom",
    icaos=icaos,
    ...
  )$content
}
