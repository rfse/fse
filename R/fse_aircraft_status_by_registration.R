#' Aircraft Status by Registration
#'
#' @param aircraftreg aircraft registration number
#'
#' @return
#' \code{xml_document} that can be processed with \pkg{xml2}
#'
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_aircraft_status_by_registration(483514)
#' xml2::xml_structure(r)
#' }
fse_aircraft_status_by_registration <- function(aircraftreg, ...) {
  res <- fse_api(
    format="xml",
    query="aircraft",
    search="status",
    aircraftreg=aircraftreg,
    ...
    )
  res$content
}
