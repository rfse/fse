# Given a CSV in binary format convert to character and read
#
# @param r raw vector
# @param ... other arguments passed to read.csv
parse_csv <- function(r, ...) {
  con <- textConnection( rawToChar(r) )
  on.exit(close(con))
  utils::read.csv(con, stringsAsFactors = FALSE, ...)
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



# Render dataframe as an Rd-style itemize list
#
# @param d data frame
rd_data_frame <- function(d) {
  items <- apply(d, 1, function(r) paste0("\\item \\code{", r[1], "} -- ", r[2]))
  c("\\itemize{", items, "}")
}
