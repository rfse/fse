#' Facilities by read access key
#'
#' List FBO facilities owned by read access key.
#'
#' @param accesskey FSE read access key
#'
#' @template feed2
#'
#' @return The object with the following columns/tags:
#'
#' @return - `Icao` -- Location ICAO code
#' - `Location` -- Location name?
#' - `Carrier` -- Owner/leasor name
#' - `CommodityNames` -- Commodity names?
#' - `GatesTotal` -- Number of passanger gates
#' - `GatesRented` -- Number of passanger gates rented
#' - `JobsPublic` -- ?
#' - `Destinations` -- ?
#' - `Fbo` -- ?
#' - `Status` -- ?
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
