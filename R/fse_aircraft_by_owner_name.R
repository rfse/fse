#' Aircraft by Owner Name
#'
#' List aircraft owned by a specific FSE user.
#'
#' @param ownername name of FSE user
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
