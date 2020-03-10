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


fse_facilities_by_key <- function(accesskey, ...) {
  fse_api(
    query = "Facilities",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}
