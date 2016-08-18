#' Make FSE API request
#'
#' @param query argument
#' @param search argument
#' @param format either xml or csv
#' @param ... other query arguments
#'
#' @import httr
#' @export
fse_api <- function(
  query = c("aircraft", "assignments", "commodities", "Facilities", "fbos",
            "flightlogs", "group", "icao", "payments", "statistics"),
  search = c("status", "configs", "aliases", "forsale", "makemodel",
             "ownername", "registration", "key", "forsale", "monthlysummary",
             "monthyear", "id", "members", "aircraft", "fbo", "fbosto",
             "jobsfrom"),
  format=c("xml", "csv"),
  ...
) {
  # Process arguments
  query <- match.arg(query)
  search <- match.arg(search)
  format <- match.arg(format)
  arglist <- list(...)


  url <- modify_url(
    url = "http://server.fseconomy.net/data",
    query = c(
      list(
        userkey=fse_ak(),
        format = format,
        query = query,
        search = search
        ),
      arglist
    )
  )
  return(url)

  # TODO make the GET request

  # TODO check response type

  # TODO parse the response

  # TODO handle API errors

  # TODO return parsed response
}
