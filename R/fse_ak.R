#' FSE access key
#'
#' @param verbose logical, should more verbose output be provided
#'
#' Retrieved from an enviroment variable \code{FSE_ACCESS_KEY}.
#' @export
fse_ak <- function(key=NULL, verbose=getOption("fse.verbose", TRUE)) {
  if( !is.null(key) ) {
    return(key)
  } else {
    # Use service key or personal key?
    use_service <- TRUE
    use_service <- ifelse(
      Sys.getenv("FSE_USE_SERVICE") != "",
      as.logical( Sys.getenv("FSE_USE_SERVICE") ),
      use_service
    )
    use_service <- getOption("fse.use_service", use_service)
    if(verbose) cat(paste("Using", ifelse(use_service, "service", "personal"), "key\n"))
    var_name <- paste(
      "FSE",
      ifelse(use_service, "SERVICE", "PERSONAL"),
      "KEY",
      sep="_"
    )
    option_name <- paste0(
      "fse.",
      ifelse(use_service, "service", "personal"),
      "_key"
    )
  }

  key <- getOption(option_name, Sys.getenv(var_name))

  if (key == "" || is.null(key)) {
    stop("no FSE key, set in the environment or option, or use `key` argument")
  }

  return(key)
}
