#' Aircraft configuraion data
#'
#' Data on all types of aircraft available in FSE.
#'
#' @templateVar feedname aircraft_configs
#' @template feed
#'
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_aircraft_configs()
#' }
fse_aircraft_configs <- function(...) {
  res <- fse_api(
    query="aircraft",
    search="configs",
    ...
  )
  res$content
}
