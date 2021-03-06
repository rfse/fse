

# Parse CSV in binary -----------------------------------------------------

# Given a CSV in binary format convert to character and read
#
# @param r raw vector
# @param ... other arguments passed to read.csv
parse_csv <- function(r, ...) {
  con <- textConnection( rawToChar(r) )
  on.exit(close(con))
  utils::read.csv(con, stringsAsFactors = FALSE, ...)
}






# Flatten a list ----------------------------------------------------------

# Flatten a list for printing query arguments
#
# @param l a list
flatten_arg_list <- function(l) {
  paste(
    names(l),
    unlist(l),
    sep="="
  )
}



# Render data frame in Rd -------------------------------------------------

# Render dataframe as an Rd-style itemize list
#
# @param d data frame
rd_data_frame <- function(d) {
  items <- apply(d, 1, function(r) paste0("\\item \\code{", r[1], "} -- ", r[2]))
  c("\\itemize{", items, "}")
}








# Return first non-NA expression ----------------------------------------

# Given a list of expressions return the value of the first that does not return
# a NULL.

first_notna <- function(...) {
  arg <- list(...)
  rval <- NULL
  for(i in seq(along=arg)) {
    x <- arg[[i]]
    if(!is.na(x)) {
      rval <- x
      break
    }
  }
  if(is.null(rval)) NA else rval
}



if(FALSE) {
  first_notna(NA, NA, 11)
}




# Data frame column names as Markdown list --------------------------------

md_list <- function(object, roxygen=FALSE) {
  vnames <- names(object)
  cat(
    paste0(
      if(roxygen) "#' ",
      "- `", vnames, "` -- "
    ),
    sep = "\n"
  )
}
