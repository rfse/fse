#' Aircraft configuraion data
#'
#' Data on all types of aircraft available in FSE.
#'
#' @template feed
#'
#' @export
fse_aircraft_configs <- function(...) {
  res <- fse_api(
    query="aircraft",
    search="configs",
    ...
  )
  res
}