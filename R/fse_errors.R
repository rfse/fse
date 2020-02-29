
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
