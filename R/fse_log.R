#' Access FSE flight logs
#'
#' Functions for querying FSE flight logs.
#'
#' @description `fse_log_by_serial_from_id` queries flight log for specified
#'   aircraft `serialnumber` and that have id greater than `formid`.
#'
#' @param serialnumber aircraft serial number
#' @param fromid log entry id
#'
#' @template feed2
#'
#' @name fse_log
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


#' @describeIn fse_log `fse_log_by_key_from_id` queries flight log for entries
#'   for associated with `accesskey` with id numbers geater than `fromid`.
#'
#' @param accesskey group's read access key
#'
#' @export

fse_log_by_key_from_id <- function(accesskey, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    accesskey,
    fromid,
    ...
  )$content
}




#' @describeIn fse_log `fse_log_by_reg_from_id_group` queries flight logs by key
#'   for from id from all group aircraft. List all log entries for associated
#'   with all the aircraft of group with `accesskey` and that have id number
#'   higher than `fromid`.
#'
#' @export

fse_log_by_reg_from_id_group <- function(accesskey, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    accesskey,
    fromid,
    type="groupaircraft",
    ...
  )$content
}


#' @describeIn fse_log `fse_log_by_reg_from_id` Flight log by aircraft
#'   registration number from Id. List all log entries for associated with the
#'   aircraft with `aircraftreg` and that have id number higher than `fromid`.
#'
#' @param aircraftreg aircraft registration number
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
