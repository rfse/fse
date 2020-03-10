#' Aircraft by MakeModel
#'
#' @param makemodel character, aircraft model name, see Details
#'
#' @details
#' To get a list of valid model names that can be submitted to \code{makemodel}
#' fetch aircraft configs with \code{\link{fse_aicraft_configs}} or go to FSE
#' system WWW page, "Aircraft" menu, "Purchase aircraft" item and check the
#' dropdown list after selecting "By model" radio button.
#'
#' @templateVar feedname aircraft_by_makemodel
#' @template feed
#'
#' @export
fse_aircraft_by_makemodel <- function(makemodel, ...) {
  fse_api(
    query="aircraft",
    search="makemodel",
    makemodel=makemodel,
    ...
  )$content
}
