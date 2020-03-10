#' FBOs by read access key
#'
#' List FBOs for the provided read access key.
#'
#' @param accesskey FSE read access key
#'
#' @templateVar feedname assignments_by_key
#' @template feed
#'
#' @export


fse_fbo_by_key <- function(accesskey, ...) {
  fse_api(
    query = "fbos",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}
