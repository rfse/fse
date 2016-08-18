#' FSE access key
#'
#' Retrieved from an enviroment variable \code{FSE_ACCESS_KEY}.
#' @export
fse_ak <- function() {
  key <- Sys.getenv("FSE_ACCESS_KEY")
  if( identical(key, "") ) {
    stop("please set env var FSE_ACCESS_KEY", call.=FALSE)
  }
  key
}
