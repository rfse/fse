#' Commodities by read access key
#'
#' List commodities for the provided read access key.
#'
#' @param accesskey FSE read access key
#'
#' @template feed2
#'
#' @return The object with the following columns/tags:
#'
#' @return - `Location` -- ICAO of airport where the commodity is at
#' - `Commodity` -- Commodity name
#' - `Amount` -- Amount of `Commodity` at `Location` in kilograms
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
