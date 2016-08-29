#' ICAO Jobs To
#'
#' Jobs to specific airport.
#'
#' @template feed
#'
#' @export
fse_icao_jobs_to <- function(icaos, ...) {
  stopifnot(is.character(icaos))
  icaos <- paste(icaos, collapse="-")
  fse_api(
    query="icao",
    search="jobsto",
    icaos=icaos,
    ...
  )
}
