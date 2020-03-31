#' Flight logs by key for from id
#'
#' List all log entries for associated with `accesskey` with id numbers geater
#' than `fromid`.
#'
#' @param accesskey group's read access key
#' @param fromid log entry id
#'
#' @templateVar feedname log_by_key_from_id
#' @template feed
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
