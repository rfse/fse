#' Aircraft Status by Registration
#'
#' Lookup the status of a particular aircraft. Only available as an XML.
#'
#' @param aircraftreg aircraft registration number
#'
#' @template feed
#'
#' @return
#' This function only returns object with content as \code{xml_document} that
#' can be processed with \pkg{xml2}.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_aircraft_status_by_registration(483514)
#' xml2::xml_structure(r)
#' }
fse_aircraft_status_by_registration <- function(aircraftreg, ...) {
  r <- fse_api(
    format="xml", # For some reason this feed always provides XML
    query="aircraft",
    search="status",
    aircraftreg=aircraftreg,
    ...
  )$content
  ch <- xml2::xml_children(xml2::xml_find_first(r, "//Aircraft"))
  cbind(
    data.frame(Registration = aircraftreg, stringsAsFactors = FALSE),
    structure(
      as.data.frame(lapply(ch, xml2::xml_text), stringsAsFactors = FALSE),
      names = vapply(ch, xml2::xml_name, character(1))
    )
  )
}
