#' Aircraft by MakeModel
#'
#' @template feed
#'
#' @export
fse_aircraft_by_makemodel <- function(makemodel, ...) {
  fse_api(
    query="aircraft",
    search="makemodel",
    makemodel=makedmodel,
    ...
  )
}
