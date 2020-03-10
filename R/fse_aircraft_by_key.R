#' Aircraft by Access Key
#'
#' List aircraft owned by FSE read access key.
#'
#' @param accesskey FSE read access key
#'
#' @templateVar feedname aircraft_by_key
#' @template feed
#'
#' @export
fse_aircraft_by_key <- function(accesskey, ...) {
  fse_api(
    query="aircraft",
    search="key",
    readaccesskey=accesskey,
    ...
  )$content
}
