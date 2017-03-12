columns <- merge(
  as.data.frame(
    matrix(
      byrow=TRUE, ncol=2,
      dimnames = list(NULL, c("feed", "column")),
      c(
        "aircraft_for_sale","SerialNumber",
        "aircraft_for_sale","MakeModel",
        "aircraft_for_sale","Registration",
        "aircraft_for_sale","Owner",
        "aircraft_for_sale","Location",
        "aircraft_for_sale","LocationName",
        "aircraft_for_sale","Home",
        "aircraft_for_sale","SalePrice",
        "aircraft_for_sale","SellbackPrice",
        "aircraft_for_sale","Equipment",
        "aircraft_for_sale","RentalDry",
        "aircraft_for_sale","RentalWet",
        "aircraft_for_sale","RentalType",
        "aircraft_for_sale","Bonus",
        "aircraft_for_sale","RentalTime",
        "aircraft_for_sale","RentedBy",
        "aircraft_for_sale","PctFuel",
        "aircraft_for_sale","NeedsRepair",
        "aircraft_for_sale","AirframeTime",
        "aircraft_for_sale","EngineTime",
        "aircraft_for_sale","TimeLast100hr",
        "aircraft_for_sale","LeasedFrom",
        "aircraft_for_sale","MonthlyFee",
        "aircraft_for_sale","FeeOwed",
        "aircraft_aliases", "MakeModel",
        "aircraft_aliases", "Alias"
      )
    ),
    stringsAsFactors = FALSE
  ),


  as.data.frame(
    matrix(
      byrow=TRUE, ncol=2,
      dimnames=list(NULL, c("column","description")),
      c(
        "SerialNumber","Aircraft serial number",
        "MakeModel","Aircraft make and model",
        "Registration","Aircraft registration number",
        "Owner","Aircraft owner, or Bank of FSE",
        "Location","Current aircraft location",
        "LocationName","Location name",
        "Home","Aircraft home airport",
        "SalePrice","Sale price",
        "SellbackPrice","Sellback price",
        "Equipment","Equipment installed on the aircraft",
        "RentalDry","Dry rental price",
        "RentalWet","Wet rental price",
        "RentalType","Rental type",
        "Bonus","Bonus",
        "RentalTime", NA,
        "RentedBy","By whom currently rented or 'Not rented.'",
        "PctFuel","Current fuel load as percent",
        "NeedsRepair","Whether aircraft needs repairs",
        "AirframeTime","Aircraft airframe time",
        "EngineTime","Aircraft engine time",
        "TimeLast100hr","Time since last 100 hour check",
        "LeasedFrom","Leasor",
        "MonthlyFee","Monthly maintenance fee",
        "FeeOwed", NA,
        "Alias", "Aircraft alias"
      )
    ),
    stringsAsFactors = FALSE
  )
)
