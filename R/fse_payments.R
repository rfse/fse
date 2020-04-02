#' Querying payment logs
#'
#' @description - [fse_payments_from_id()] -- Query payments to/from account
#'   associated with the provided access key with IDs greater than the ID
#'   provided.
#'
#' @param fromid transaction ID
#' @param accesskey FSE read access key
#'
#' @template feed2
#'
#' @name fse_payments
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



#' @rdname fse_payments
#'
#' @description - [fse_payments_by_monthyear()] -- list of financial operations
#'   of user with `accesskey` in specified `year` and `month`
#'
#' @param month,year month and year as integers
#'
#' @export

fse_payments_by_monthyear <- function(month, year, accesskey, ...) {
  stopifnot(month %in% 1:12)
  stopifnot(year %in% seq(1990, as.numeric(format(Sys.Date(), "%Y"))))
  fse_api(
    query = "payments",
    search = "monthyear",
    readaccesskey = accesskey,
    month = month,
    year = year,
    ...
  )$content
}
