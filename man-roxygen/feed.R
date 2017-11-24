#' @param ... other arguments passed to \code{\link{fse_api}}
#'
#' @return
#' Feed can return \code{data.frame} (default) or \code{xml_document} depending
#' on the value of \code{format} (see \code{\link{fse_api}}). In either case the result will
#' contain the following columns/tags:
#'
#' \Sexpr[results=verbatim,stage=render,echo=FALSE]{try(fse:::column_descriptions('<%=if(exists("feedname")) feedname%>'))}
#'
#' @family FSE feeds
