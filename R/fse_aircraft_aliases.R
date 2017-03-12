#' Aircraft Aliases
#'
#' Aliases of FSE aircraft.
#'
#' @template feed
#'
#' @return
#' The object will have the following tags/columns:
#'
#' \Sexpr[results=rd,stage=build]{
#' fse:::rd_data_frame(subset(fse::columns, feed == "aircraft_aliases", select=c("column", "description")))
#' }
#'
#' @export
fse_aircraft_aliases <- function(...) {
  fse_api(
    query="aircraft",
    search="aliases",
    ...
  )$content
}
