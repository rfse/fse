#' Assignments to and from airports
#'
#' @description - [fse_icao_jobs_from()] -- list jobs from airports with
#'   provided ICAO codes
#'
#' @param icaos airport ICAO codes (can be more than one, as a character vector)
#'
#' @template feed2
#'
#' @return The object with the following columns/tags:
#'
#' @return - `Id` -- Assignment Id
#' - `Location` -- ICAO where the payload is currently at
#' - `ToIcao` -- ICAO of destination airport
#' - `FromIcao` -- ICAO of origin airport
#' - `Amount` -- Payload amount
#' - `UnitType` -- The unit of `Amount`
#' - `Commodity` -- Payload description
#' - `Pay` -- Assignment pay in v$
#' - `Expires` -- Time in which the assignment expires
#' - `ExpireDateTime` -- Date and time at which the assignment expires
#' - `Express` -- Is it an express assignment: "False", "True"
#' - `PtAssignment` -- Is it an assignment of a PAX terminal: "False", "True"
#' - `Type` -- Type of assignment: "Trip-Only", "All-In"
#' - `AircraftId` -- For "All-In" assignments the serial number of the aircraft assigned to the job
#'
#' @name fse_jobs
#' @export
fse_icao_jobs_from <- function(icaos, ...) {
  stopifnot(is.character(icaos))
  icaos <- paste(icaos, collapse="-")
  fse_api(
    query="icao",
    search="jobsfrom",
    icaos=icaos,
    ...
  )$content
}


#' @rdname fse_jobs
#'
#' @description - [fse_icao_jobs_to()] -- list jobs to airports with provided ICAO codes
#'
#' @export
fse_icao_jobs_to <- function(icaos, ...) {
  stopifnot(is.character(icaos))
  icaos <- paste(icaos, collapse="-")
  fse_api(
    query="icao",
    search="jobsto",
    icaos=icaos,
    ...
  )$content
}
