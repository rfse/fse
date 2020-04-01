#' Aircraft configuraion data
#'
#' Data on all types of aircraft available in FSE.
#'
#' @template feed2
#'
#' @return Object returned contains the following columns/tags:
#'
#' @return - `Crew`
#' - `Seats`
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
