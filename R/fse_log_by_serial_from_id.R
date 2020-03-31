#' Flight log by aircraft serial number from Id
#'
#' List all log entries for associated with the aircraft with `serialnumber` and
#' that have id number higher than `fromid`.
#'
#' @param serialnumber aircraft serial number
#' @param fromid Log entry id
#'
#' @templateVar feedname log_by_serial_from_id
#' @template feed
#'
#' @export

fse_log_by_serial_from_id <- function(serialnumber, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    serialnumber = serialnumber,
    fromid = fromid,
    ...
  )$content
}
