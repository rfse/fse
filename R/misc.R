# Given a CSV in binary format convert to character and read
#
# @param r raw vector
# @param ... other arguments passed to read.csv
parse_csv <- function(r, ...) {
  con <- textConnection( rawToChar(r) )
  on.exit(close(con))
  read.csv(con, stringsAsFactors = FALSE, ...)
}






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
