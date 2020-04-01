#' Query FSE aircraft
#'
#' @description Functions for querying FSE aircraft.
#'
#' @description - `fse_aircraft_by_makemodel` queries aircraft by model name
#'
#' @param makemodel character, aircraft model name, see Details
#'
#' @details For [fse_aircraft_by_makemodel()], to get a list of valid model
#'   names that can be submitted to \code{makemodel} fetch aircraft configs with
#'   \code{\link{fse_aicraft_configs}} or go to FSE system WWW page, "Aircraft"
#'   menu, "Purchase aircraft" item and check the dropdown list after selecting
#'   "By model" radio button.
#'
#' @template feed2
#'
#' @return All these function return data.frame/XML with the following columns/tags:
#'
#' @return - `SerialNumber` -- Aircraft serial number
#' - `MakeModel` -- Aircraft model name
#' - `Registration` -- Registration number
#' - `Owner`
#' - `Location`
#' - `LocationName`
#' - `Home`
#' - `SalePrice`
#' - `SellbackPrice`
#' - `Equipment`
#' - `RentalDry`
#' - `RentalWet`
#' - `Bonus`
#' - `RentalTime`
#' - `RentedBy`
#' - `PctFuel`
#' - `NeedsRepair`
#' - `AirframeTime`
#' - `EngineTime`
#' - `TimeLast100hr`
#' - `LeasedFrom`
#' - `MonthlyFee`
#' - `FeeOwed`
#'
#'
#' @name fse_aircraft
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_aircraft_by_makemodel("Cessna 172 Skyhawk")
#' }

fse_aircraft_by_makemodel <- function(makemodel, ...) {
  fse_api(
    query="aircraft",
    search="makemodel",
    makemodel=makemodel,
    ...
  )$content
}




#' @rdname fse_aircraft
#'
#' @description - `fse_aircraft_by_key` queries for aircraft associated to an
#'   FSE read access key
#'
#' @param accesskey FSE read access key
#'
#' @export
fse_aircraft_by_key <- function(accesskey, ...) {
  fse_api(
    query="aircraft",
    search="key",
    readaccesskey=accesskey,
    ...
  )$content
}


#' @rdname fse_aircraft
#'
#' @description - `fse_aircraft_by_owner_name` query aircraft by owner name
#'
#' @param ownername character, FSE account name
#'
#' @export

fse_aircraft_by_owner_name <- function(ownername, ...) {
  fse_api(
    query="aircraft",
    search="ownername",
    ownername=ownername,
    ...
  )$content
}
