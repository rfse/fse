#' Statistics by read access key
#'
#' User statistics such as financials, number of flights and miles flown.
#'
#' @param accesskey FSE read access key
#'
#' @templateVar feedname statistics_by_key
#' @template feed
#'
#' @export

fse_statistics_by_key <- function(accesskey, ...) {
  fse_api(
    query = "statistics",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}
