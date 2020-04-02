#' Query FSE FBOs
#'
#' @description These function query FSE FBOs using accesskey or those that are
#'   currently for sale.
#'
#' @description - [fse_fbo_by_key()] -- list of FBOs belonging to the provided read access key.
#'
#' @param accesskey FSE read access key
#'
#' @template feed2
#'
#' @return The object with the following columns/tags:
#'
#' @return - `FboId` -- FBO id
#' - `Status` -- Status of the FBO: "Active" or "Closed"
#' - `Airport` -- Name of the airport
#' - `Name` -- Name of the FBO
#' - `Owner` -- Owner
#' - `Icao` -- ICAO code of the airport
#' - `Location` -- Name of the location
#' - `Lots` -- Number of lots
#' - `RepairShop` -- Is there a repair shop: "Yes" or "No"
#' - `Gates` -- Number of gates or "No Passenger Terminal"
#' - `GatesRented` -- Number of gates rented or "No Passenger Terminal"
#' - `Fuel100LL` -- Available 100LL in kilograms
#' - `FuelJetA` -- Available JetA in kilograms
#' - `BuildingMaterials` -- Available building materials in kilograms
#' - `Supplies` -- Available supplies in kilograms
#' - `SuppliesPerDay` -- Supplies consumption per day
#' - `SuppliedDays` -- For how many days the FBO will be supplied
#' - `SellPrice` -- ?
#' - `Fuel100LLGal` -- Available 100L fuel in galons
#' - `FuelJetAGal` -- Available JetA fuel in galons
#' - `Price100LLGal` -- Price of 100L fuel per galon
#' - `PriceJetAGal` -- Price of JetA fuel per galon
#'
#' @name fse_fbo
#' @export


fse_fbo_by_key <- function(accesskey, ...) {
  fse_api(
    query = "fbos",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}



#' @rdname fse_fbo
#'
#' @description - [fse_fbo_for_sale()] - list of FBOs for sale
#'
#' @export


fse_fbo_for_sale <- function(...) {
  fse_api(
    query = "fbos",
    search = "forsale",
    ...
  )$content
}
