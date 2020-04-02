

# Simple condition --------------------------------------------------------

# Simple condition generator as shown here
# http://adv-r.had.co.nz/Exceptions-Debugging.html#condition-handling
condition <- function(subclass, message, call = sys.call(-1), ...) {
  structure(
    class = unique(c(subclass, "condition")),
    list(message = message, call = call),
    ...
  )
}

# Is it a condition?
is.condition <- function(x) inherits(x, "condition")



# Catch FSE API errors ----------------------------------------------------

# Is a response an FSE API error
#
# @param x httr response
#
# @return FALSE or throw an error

fse_error <- function(x) {
  stopifnot(inherits(x, "response"))
  r <- content(x, "raw")
  # Try parsing the content
  xml <- try(xml2::read_xml(rawToChar(r)), silent = TRUE)
  # If not an XML then not the API error
  if(inherits(xml, "try-error")) return(FALSE)
  # get all <Error> tags
  nodeset <- xml2::xml_find_all(xml, "/Error")
  if(length(nodeset) == 0) return(FALSE) # No <Error> tags
  msgs <- vapply(nodeset, xml2::xml_text, character(1))
  condition(
    subclass = c("fse-error", "error"),
    message = paste(msgs, collapse=",\n"),
    request = x$request
  )
}





# Handle FSE data feeds errors

fse_errors <- function(xml) {
  nodeset <- xml2::xml_find_all(xml, "/Error")
  if(length(nodeset) == 0) return(TRUE)
  errors <- vapply(nodeset, xml2::xml_text, character(1))
  cond <- condition(
    c("fse_error", "error"),
    message = paste(
      "FSE replies errors:",
      paste(errors, collapse=" ")
    )
  )
  stop(cond)
}







