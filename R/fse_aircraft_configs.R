#' Aircraft configuration data
#'
#' Data on all types of aircraft available in FSE. The function will fetch it
#' from the server, but it does not change too frequently, hence a built-in
#' version too.
#'
#' @template feed2
#'
#' @return Function [fse_aircraft_configs()] return a data frame or XML object
#'   with the columns/tags listed in the Format section. Object
#'   [aircraft_configs] is simply a data frame returned by that function on
#'   2020-04-03.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' r <- fse_aircraft_configs()
#' }
fse_aircraft_configs <- function(...) {
  res <- fse_api(
    query="aircraft",
    search="configs",
    ...
  )
  res$content
}





#' @rdname fse_aircraft_configs
#'
#' @format Object `aircraft_configs` is a data frame returned by
#'   [fse_aircraft_configs()] and has the following columns:
#'
#' @format  - `MakeModel` -- Aircraft model name
#' - `Crew` -- Number of crew members
#' - `Seats` -- Number of PAX seats
#' - `CruiseSpeed` -- Average cruise speed
#' - `GPH` -- Fuel consumption in Gallons Per Hour
#' - `FuelType` -- Fuel type
#' - `MTOW` -- Maximal TakeOff Weight
#' - `EmptyWeight` -- Empty weight
#' - `Price` -- System aircraft price
#' - `Ext1` -- Fuel tank capacity: external 1
#' - `LTip` --
#' - `LAux` --
#' - `LMain` --
#' - `Center1` --
#' - `Center2` --
#' - `Center3` --
#' - `RMain` --
#' - `RAux` --
#' - `RTip` --
#' - `RExt2` -- Fuel tank capacity: right external 2
#' - `Engines` -- Number of engines
#' - `EnginePrice` -- Engine price (maintenance)
#' - `ModelId` -- Aircraft model ID
#'
"aircraft_configs"
