# Basic GET
fse_GET <- function(path="data", ... ) {
  req <- GET( getOption("fse.url", "http://server.fseconomy.net"), path=path, ...)
  fse_check(req)
  req
}


# Check request result for HTTP errors and service errors (<error> tags)
fse_check <- function(x) {
  NULL
}

# Get FSE user access key
fse_userkey <- function() {
  getOption("fse.userkey", "***REMOVED***")
}


fse_parse_xml <- function(x, ...) {
  txt <- httr::content(x, as = "text")
  xml <- xml2::read_xml(txt, ...)
  r <- structure(xml, class=c(xml2::xml_name(xml), class(xml)))
  parse_xml(r)
}

fse_parse_csv <- function(x, ...) {
  txt <- httr::content(x, as = "text")
  con <- textConnection(txt)
  read.csv(con, ...)
}


aircraft_status_by_registration <- function(aircraftreg,
                                            userkey=fse_userkey(),
                                            format=getOption("fse.format", "xml"),
                                            ... ) {
  stopifnot(is.character(aircraftreg))
  stopifnot(length(aircraftreg)==1)
  args <- list(
    userkey=userkey,
    format=format,
    query="aircraft",
    search="status",
    aircraftreg=aircraftreg
  )
  r <- fse_GET(path="data", query=args, ...)
  switch(args$format,
         xml = fse_parse_xml(r),
         csv = fse_parse_csv(r)
  )
}


aircraft_configs <- function(userkey=fse_userkey(),
                             format=getOption("fse.format", "xml"), ...) {
  args <- list(
    userkey=userkey,
    format=format,
    query="aircraft",
    search="configs"
  )
  r <- fse_GET(path="data", query=args, ...)
  switch(args$format,
         xml = fse_parse_xml(r),
         csv = fse_parse_csv(r)
  )
}


flight_logs_by_key_month_year <- function(  year, month,
                                            format=getOption("fse.format", "xml"),
                                            readaccesskey=fse_userkey(),
                                            userkey=fse_userkey(), ...) {
  args <- list(
    userkey=userkey,
    format=format,
    query="flightlogs",
    search="monthyear",
    readaccesskey=readaccesskey,
    year=year,
    month=month
  )
  r <- fse_GET(path="data", query=args, ...)
  switch(args$format,
         xml = fse_parse_xml(r),
         csv = fse_parse_csv(r)
  )
}
