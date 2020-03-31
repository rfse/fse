#' Payments by month and year
#'
#' List of financial operations of user with `accesskey` in specified `year` and `month`
#'
#' @param month,year month and year as integers
#' @param accesskey FSE read access key
#'
#' @templateVar feedname payments_by_monthyear
#' @template feed
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
