#' Monthly summary statistics for an FBO
#'
#' @param icao Airport ICAO code
#' @param year,month year and month as integers
#' @param accesskey FSE access key
#'
#' @template feed2
#'
#' @return Columns to be provided.
#'
#' @export

fse_fbo_summary <- function(icao, month, year, accesskey, ...) {
  fse_api(
    query = "fbos",
    search = "monthlysummary",
    readaccesskey = accesskey,
    icao = icao,
    month = month,
    year = year
  )$content
}

