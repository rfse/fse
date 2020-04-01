#' Query FSE flight logs
#'
#' @description Functions for querying FSE flight logs.
#'
#' @description - `fse_log_by_serial_from_id` queries flight log for specified
#'   aircraft `serialnumber` and that have id greater than `formid`.
#'
#' @param serialnumber aircraft serial number
#' @param fromid log entry id
#'
#' @template feed2
#'
#' @return All these functions return data.frame/XML with the following
#'   columns/tags:
#'
#' @return - `Id` -- Log entry id
#' - `Type` -- Entry type
#' - `Time` -- Time as `yyyy/mm/dd`
#' - `Distance` -- If `Type = flight` distance flown, `0` otherwise
#' - `Pilot` -- Pilot name
#' - `SerialNumber` -- Aircraft serial number
#' - `Aircraft` -- Registration id
#' - `MakeModel` -- Aircraft make and model
#' - `From` -- ICAO from
#' - `To` -- ICAO to
#' - `TotalEngineTime` -- Total engine time as `hh:mm`
#' - `FlightTime` -- Flight time as `hh:mm`
#' - `GroupName` -- For group flights the group name or `""` otherwise
#' - `Income`
#' - `PilotFee`
#' - `CrewCost`
#' - `BookingFee`
#' - `Bonus`
#' - `FuelCost`
#' - `GCF` -- ?
#' - `RentalPrice`
#' - `RentalType` -- ("hoobs); ("tacho")
#' - `RentalUnits` --
#' - `RentalCost`
#'
#' @name fse_log
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_log_by_serial_from_id(32019, 1)
#' }

fse_log_by_serial_from_id <- function(serialnumber, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    serialnumber = serialnumber,
    fromid = fromid,
    ...
  )$content
}


#' @rdname fse_log
#'
#' @description - `fse_log_by_key_from_id` queries flight log for entries
#'   for associated with `accesskey` with id numbers geater than `fromid`.
#'
#' @param accesskey group's read access key
#'
#' @export

fse_log_by_key_from_id <- function(accesskey, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    accesskey,
    fromid,
    ...
  )$content
}




#' @rdname fse_log
#'
#' @description - `fse_log_by_reg_from_id_group` queries flight logs by key
#'   for from id from all group aircraft. List all log entries for associated
#'   with all the aircraft of group with `accesskey` and that have id number
#'   higher than `fromid`.
#'
#' @export

fse_log_by_reg_from_id_group <- function(accesskey, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    accesskey,
    fromid,
    type="groupaircraft",
    ...
  )$content
}


#' @rdname fse_log
#'
#' @description - `fse_log_by_reg_from_id` Flight log by aircraft
#'   registration number from Id. List all log entries for associated with the
#'   aircraft with `aircraftreg` and that have id number higher than `fromid`.
#'
#' @param aircraftreg aircraft registration number
#'
#' @export

fse_log_by_reg_from_id <- function(aircraftreg, fromid, ...) {
  fse_api(
    query = "flightlogs",
    search = "id",
    aircraftreg = aircraftreg,
    fromid = fromid,
    ...
  )$content
}




#' @rdname fse_log
#'
#' @description `fse_log_by_serial_monthyear` -- Query flight logs by aircraft
#'   serial number, year and month.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_log_by_serial_monthyear(6930, 2016, 4)
#' }
fse_log_by_serial_monthyear <- function(serialnumber, year, month, ...) {
  fse_api(
    query = "flightlogs",
    search = "monthyear",
    serialnumber = serialnumber,
    month = month,
    year = year,
    ...
  )$content
}
