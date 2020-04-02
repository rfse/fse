#' List group members
#'
#' List members of a FSE group identified by the `accesskey`
#'
#' @param accesskey Read Access Key of a FSE group
#'
#' @template feed2
#'
#' @export
fse_group_members <- function(accesskey, ...) {
  fse_api(
    query="group",
    search="members",
    readaccesskey = accesskey,
    ...
  )$content
}
