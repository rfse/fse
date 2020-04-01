#' Aircraft for Sale
#'
#' List of aircraft currently for sale.
#'
#' @template feed2
#'
#' @return The return object contains the following columns/tags:
#'
#' @return - `SerialNumber`
#' - `MakeModel`
#' - `Registration`
#' - `Owner`
#' - `Location`
#' - `LocationName`
#' - `Home`
#' - `SalePrice`
#' - `SellbackPrice`
#' - `Equipment`
#' - `RentalDry`
#' - `RentalWet`
#' - `RentalType`
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
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_aircraft_for_sale()
#' }
fse_aircraft_for_sale <- function(...) {
  fse_api(
    query="aircraft",
    search="forsale",
    ...
  )$content
}
