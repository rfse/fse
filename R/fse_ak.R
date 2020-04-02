#' FSE access keys
#'
#' @description FSE access keys give access to the data feeds. For a more
#'   complete description see
#'   https://sites.google.com/site/fseoperationsguide/expansion/data-feeds. The
#'   package can work with both the personal key (PK) or the service key (SK).
#'   Functions below allow for setting and retrieving these access keys.
#'
#' @description - [fse_ak()] -- returns the default access key for use when querying the data feeds
#'
#' @param use type of key to use. Expects `"service"`, `"personal"` or `"auto"`
#'   (default).
#'
#' @details For [fse_ak()] the type of key returned depends on `use`. If it is
#'   `"auto"` (the default) the function looks for service key first, personal
#'   second and throws error if none is found.
#'
#' @return Function [fse_ak()] returns the access key or throws an error if non is found.
#'
#' @export

fse_ak <- function(use=getOption("fse.key_type", "auto")) {
  k <- if(identical(use, "auto")) {
    # service > personal > error
    k <- first_notna(fse_sk(), fse_pk(), NA)
  } else {
    # look at `use`
    stopifnot(is.character(use))
    switch(
      use,
      personal = fse_pk(),
      service = fse_sk(),
      stop("`use` must be 'personal' or 'service'")
    )
  }
  if(is.na(k)) stop("no access key found")
  k
}




#' @rdname fse_ak
#'
#' @description - [fse_pk()], [fse_sk()] -- Retrieve, respectively, FSE personal or service key if available.
#'
#' @return Functions [fse_sk()] and [fse_pk()] return the FSE access key of
#'   specified type or `NA` if it is not available.
#'
#' @export

fse_pk <- function() {
  ch <- Sys.getenv("FSE_PERSONAL_KEY")
  if(identical(ch, "")) return(as.character(NA)) else as_fse_key(ch, type="personal")
}

#' @rdname fse_ak
#' @export

fse_sk <- function() {
  ch <- Sys.getenv("FSE_SERVICE_KEY")
  if(identical(ch, "")) return(as.character(NA)) else as_fse_key(ch, type="service")
}




#' @rdname fse_ak
#'
#' @description - [set_fse_pk()], [set_fse_sk()] -- Set FSE personal and service key
#'
#' @param key character scalar with FSE key
#'
#' @return Functions [set_fse_pk()], [set_fse_sk()] return invisibly `TRUE` or
#'   `FALSE` if the key was succesfully set, just like [Sys.setenv()].
#'
#' @export

set_fse_pk <- function(key) {
  Sys.setenv("FSE_PERSONAL_KEY" = key)
}


#' @rdname fse_ak
#' @export

set_fse_sk <- function(key) {
  Sys.setenv("FSE_SERVICE_KEY" = key)
}








#' @method print fse_key
#' @rdname fse_ak
#'
#' @param x for the [print()] method, object inheriting from class "fse_key".
#'   For `as_fse_key` object coercible to character interpreted as FSE
#'   access key.
#'
#' @export
print.fse_key <- function(x, ...) {
  cls <- class(x)
  cat("<FSE ", cls[1], " key: ", x, ">", sep="")
  invisible(NULL)
}





#' @rdname fse_ak
#'
#' @details
#' Function [as_fse_key()] stores an FSE access key together with the
#' information whether it is a personal key or service key.
#'
#' @export
as_fse_key <- function(x, ...) UseMethod("as_fse_key")

#' @method as_fse_key character
#' @rdname fse_ak
as_fse_key.character <- function(x, type=c("personal", "service")) {
  stopifnot(!is.na(x))
  type <- match.arg(type)
  structure(
    x,
    class = c(type, "fse_key", "character")
  )
}

#' @method as_fse_key default
#' @rdname fse_ak
as_fse_key.default <- function(x, ...) {
  as_fse_key.character(as.character(x), ...)
}



