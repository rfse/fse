#' Aircraft for Sale
#'
#' @template feed
#'
#' @return
#' The object will have the following tags/columns:
#'
#' \Sexpr[results=rd,stage=build]{
#' fse:::rd_data_frame(subset(fse::columns, feed == "aircraft_for_sale", select=c("column", "description")))
#' }
#'
#'
#' @export
fse_aircraft_for_sale <- function(...) {
  fse_api(
    query="aircraft",
    search="forsale",
    ...
  )$content
}
