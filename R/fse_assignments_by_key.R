#' Assignments by read access key
#'
#' List "My flight" assignments for the provided read access key.
#'
#' @param accesskey FSE read access key
#'
#' @templateVar feedname assignments_by_key
#' @template feed
#'
#' @export


fse_assignments_by_key <- function(accesskey, ...) {
  fse_api(
    query = "assignments",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}
