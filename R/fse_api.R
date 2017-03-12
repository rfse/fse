#' Make FSE API request
#'
#' Function makes a request to FSE data system.
#'
#' @param query argument
#' @param search argument
#' @param format either \code{"csv"} (default) or \code{"xml"}
#' @param ... other arguments, see Details
#' @param content_as character, passed to \code{as} argument of \code{\link{content}}
#' @param x object returned by \code{\link{fse_api}}
#'
#'
#' @details
#' Requests to FSE data feeds require at least specyfying \code{format} and
#' \code{query} URL arguments. Possible values of these arguments are specified
#' in the synopsis. Do note that not all possible combinations make sense. Other
#' arguments, which are feed-specific can be passed through \code{...}. See FSE
#' feed documentation for details.
#'
#' Arguments \code{format} and \code{content_as} can be used to further
#' customize the output format.
#'
#'
#'
#' @return
#' A list of class "fse_api" with the following components:
#' \item{content}{a data frame or \code{xml_document}, depending on the value of \code{format} argument}
#' \item{query}{a list with query parameters used in the request}
#' \item{response}{the result of the request, as returned by httr::\code{\link{GET}}}
#'
#' @import httr
#' @export
fse_api <- function(
  query = c("aircraft", "assignments", "commodities", "Facilities", "fbos",
            "flightlogs", "group", "icao", "payments", "statistics"),
  search = c("status", "configs", "aliases", "forsale", "makemodel",
             "ownername", "registration", "key", "forsale", "monthlysummary",
             "monthyear", "id", "members", "aircraft", "fbo", "fbos", "jobsto",
             "jobsfrom"),
  format=c("csv", "xml"),
  ...,
  content_as="parsed"
) {
  # Process arguments
  query <- match.arg(query)
  search <- match.arg(search)
  format <- match.arg(format)

  valid_other_args <- c("query", "search", "format", "makemodel", "ownername",
                        "aircraftreg", "readaccesskey", "month", "year", "icao",
                        "serialnumber", "fromid", "type", "icaos")
  other_args <- list(...)
  arg_ok <- names(other_args) %in% valid_other_args
  if(!all(arg_ok))
    stop("invalid arguments: ", paste(names(other_args)[!arg_ok], collapse=", "))

  arglist <- c(
    list(
      format = format,
      query = query,
      search = search
    ),
    other_args
  )

  k <- fse_ak()
  if(inherits(k, "service")) {
    arglist$servicekey <- as.character(k)
  } else {
    arglist$userkey <- as.character(k)
  }

  url <- modify_url(
    url = "http://server.fseconomy.net/data",
    query = arglist
    )
  # return(url)

  # Make the request
  resp <- GET(url)

  # Test for HTTP errors
  if( http_error(resp) ) {
    stop(
      sprintf(
        "FSE request failed [%s]",
        status_code(resp)
      )
    )
  }

  # Check response type
  resp_type <- http_type(resp)
  expect_type <- c(
    csv = "application/x-excel",
    xml = "text/xml"
    )[format]
  response_ok <- all.equal(resp_type, expect_type, check.attributes = FALSE)
  if( !response_ok ) {
    stop("API did not return ",
         sQuote(expect_type),
         " but ",
         sQuote(resp_type),
         call. = FALSE)
  }


  # Parse the response
  parsed <- switch(format,
                   csv = parse_csv(content(resp)),
                   xml = content(resp, as=content_as)
  )

  # TODO Handle API errors

  # Return parsed response
  structure(
    list(
      content = parsed,
      query = arglist,
      response = resp
    ),
    class="fse_api"
  )
}


#' @method print fse_api
#' @export
#' @rdname fse_api
print.fse_api <- function(x, ...) {
  cat("<FSE ",
      paste( flatten_arg_list(x$query), collapse="&"),
      ">\n", sep="")
  utils::str(x$content)
  invisible(x)
}





if(FALSE) {
r <- fse_api(search="registration", aircraftreg=483514, format="csv")
r <- GET(u)
type <- http_type(r)

z <- content(r)
d <- parse_csv(z)

u <- fse_api(search="registration", aircraftreg=483514, format="xml")
r <- GET(u)
http_type(r)
xml <- content(r)
}
