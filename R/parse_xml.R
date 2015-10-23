parse_xml <- function(x, ...) UseMethod("parse_xml")

parse_xml.default <- function(x) x

parse_xml.FlightLogsByMonth <- function(x) {
  x
}
