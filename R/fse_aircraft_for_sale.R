#' Aircraft for Sale
#'
#' @template feed
#'
#' @export
fse_aircraft_for_sale <- function(...) {
  fse_api(
    query="aircraft",
    search="forsale",
    ...
  )$content
}
