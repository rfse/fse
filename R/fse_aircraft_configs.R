#' Aircraft configuraion data
#'
#' Data on all types of aircraft available in FSE. The function will fetch it
#' from the server, but it does not change too frequently, hence a built-in
#' version too.
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





#' @rdname fse_aircraft_configs
#'
#' @format Data frame with aircraft configuration.
"aircraft_configs"
