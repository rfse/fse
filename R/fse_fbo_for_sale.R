#' FBOs for sale
#'
#' List FBOs for sale.
#'
#' @templateVar feedname fbos_for_sale
#' @template feed
#'
#' @export


fse_fbo_for_sale <- function(...) {
  fse_api(
    query = "fbos",
    search = "forsale",
    ...
  )$content
}
