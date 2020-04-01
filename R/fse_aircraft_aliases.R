#' Aircraft Aliases
#'
#' Aliases of FSE aircraft.
#'
#' @template feed2
#'
#' @return Returned object has the following columns/tags:
#'
#' @return - `MakeModel` -- Aircraft model name
#' - `Alias` -- Alias
#'
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_aircraft_aliases()
#' }
fse_aircraft_aliases <- function(...) {
  fse_api(
    query="aircraft",
    search="aliases",
    ...
  )$content
}
