#' Aircraft by Owner Name
#'
#' @template feed
#'
#' @export
fse_aircraft_by_owner_name <- function(ownername, ...) {
  fse_api(
    query="aircraft",
    search="ownername",
    ownername=ownername,
    ...
  )
}
