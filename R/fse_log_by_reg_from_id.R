#' Flight log by aircraft registration number from Id
#'
#' List all log entries for associated with the aircraft with `aircraftreg` and
#' that have id number higher than `fromid`.
#'
#' @param aircraftreg aircraft registration number
#' @param fromid log entry id
#'
#' @templateVar feedname log_by_reg_from_id
#' @template feed
#'
#' @export

fse_log_by_reg_from_id <- function(aircraftreg, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    aircraftreg = aircraftreg,
    fromid = fromid,
    ...
  )$content
}
