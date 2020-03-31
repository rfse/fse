#' Flight logs by key for from id from all group aircraft
#'
#' List all log entries for associated with all the aircraft of group with
#' `accesskey` and that have id number higher than `fromid`.
#'
#' @param accesskey group's read access key
#' @param fromid log entry id
#'
#' @templateVar feedname log_by_reg_from_id_group
#' @template feed
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
