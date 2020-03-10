#' Commodities by read access key
#'
#' List commodities for the provided read access key.
#'
#' @param accesskey FSE read access key
#'
#' @templateVar feedname assignments_by_key
#' @template feed
#'
#' @export


fse_commodities_by_key <- function(accesskey, ...) {
  fse_api(
    query = "commodities",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}
