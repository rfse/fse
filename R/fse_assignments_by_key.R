#' Assignments by read access key
#'
#' List "My flight" assignments for the provided read access key.
#'
#' @param accesskey FSE read access key
#'
#' @template feed2
#'
#' @return The object contains the following columns/tags:
#'
#' @return - `Id` -- Assignment Id
#' - `Status` -- Assignment status one of "Selected", "Departing" or "Enroute"
#' - `Location` -- ICAO where the job is at
#' - `From` -- Originating airport
#' - `Destination` -- Destination airport
#' - `Assignment` -- Description of payload
#' - `Amount` -- Number of pax or kg
#' - `Units` -- The unit of `Amount`
#' - `Pay` -- Assignment pay in vdollars
#' - `PilotFee` -- Pilot fee (for group assignments?)
#' - `Expires` -- Amount of time in which the assignment will expire
#' - `ExpireDateTime` -- Date and time at which the assignment will expire
#' - `Type` -- Type of assignment: "Trip-Only", "All-In"...
#' - `Express` -- Is it an express assignment
#' - `Locked` -- Name of the pilot that has the assignment selected
#' - `Comment` -- Additional comments
#'
#' @export


fse_assignments_by_key <- function(accesskey, ...) {
  fse_api(
    query = "assignments",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}
