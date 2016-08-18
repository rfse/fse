#' Download FSE ICAO data
#'
#' Data on airports available in FSE.
#'
#' @return A data frame.
#'
#' @export
fse_icao_data <- function() {
  u <- "http://server.fseconomy.net/static/library/datafeed_icaodata.zip"
  fname <- tempfile()
  on.exit(unlink(fname))
  download.file(u, destfile=fname)
  con <- unz(fname, "icaodata.csv")
  read.csv(con, stringsAsFactors = FALSE)
}
