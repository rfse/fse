columns <- as.data.frame(
  matrix(
    byrow=TRUE, ncol=3,
    dimnames=list(NULL, c("feed","column","description")),
    c(
      "aircraft_for_sale","SerialNumber","Aircraft serial number",
      "aircraft_for_sale","MakeModel", "Aircraft make and model",
      "aircraft_for_sale","Registration", "Aircraft registration number",
      "aircraft_for_sale","Owner", "Aircraft owner, or Bank of FSE",
      "aircraft_for_sale","Location", "Current aircraft location",
      "aircraft_for_sale","LocationName", "Location name",
      "aircraft_for_sale","Home", "Aircraft home airport",
      "aircraft_for_sale","SalePrice", "Sale price",
      "aircraft_for_sale","SellbackPrice", "Sellback price",
      "aircraft_for_sale","Equipment", "Equipment installed on the aircraft",
      "aircraft_for_sale","RentalDry", "Dry rental price",
      "aircraft_for_sale","RentalWet", "Wet rental price",
      "aircraft_for_sale","RentalType", "Rental type",
      "aircraft_for_sale","Bonus", "Bonus",
      "aircraft_for_sale","RentalTime", "?",
      "aircraft_for_sale","RentedBy", "By whom currently rented or 'Not rented.'",
      "aircraft_for_sale","PctFuel", "Current fuel load in %",
      "aircraft_for_sale","NeedsRepair", "Whether aircraft needs repairs",
      "aircraft_for_sale","AirframeTime", "Aircraft airframe time",
      "aircraft_for_sale","EngineTime", "Aircraft engine time",
      "aircraft_for_sale","TimeLast100hr", "Time since last 100 hour check",
      "aircraft_for_sale","LeasedFrom", "Leasor",
      "aircraft_for_sale","MonthlyFee", "Monthly maintenance fee",
      "aircraft_for_sale","FeeOwed", "?"
    )
  ),
  stringsAsFactors = FALSE
)
