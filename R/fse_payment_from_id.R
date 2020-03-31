#' Payments from Id
#'
#' TODO Write what it actually is.
#'
#' @param fromid id
#' @param accesskey FSE read access key
#'
#' @templateVar feedname payments_from_id
#' @template feed
#'
#' @export

fse_payments_from_id <- function(fromid, accesskey, ...) {
  fse_api(
    query = "payments",
    search = "id",
    readaccesskey = accesskey,
    fromid = fromid,
    ...
  )$content
}
