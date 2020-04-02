#' FSE ICAO data
#'
#' Data on airports available in FSE.
#'
#' @format A data frame with 23760 rows and the following 9 columns:
#'
#' @format - `icao` -- ICAO code
#' - `lat` -- Latitude
#' - `lon` -- Longitude
#' - `type` -- Type of airport: "civil", "military", "water"
#' - `size` -- Airport size?
#' - `name` -- Name of the airport
#' - `city` -- Airport city name
#' - `state` -- Airport state (for U.S.)
#' - `country` -- Airtport country
#'
"icao_data"



# Fetch ZIPped data from FSE server
fse_icao_data <- function() {
  u <- "https://server.fseconomy.net/static/library/datafeed_icaodata.zip"
  fname <- tempfile()
  on.exit(unlink(fname))
  utils::download.file(u, destfile=fname)
  con <- unz(fname, "icaodata.csv")
  utils::read.csv(con, stringsAsFactors = FALSE)
}
