#' ICAO listing of FBOs
#'
#' List FBOs present at location of ICAO code.
#'
#' @param icao airport ICAO code
#'
#' @templateVar feedname icao_fbos
#' @template feed
#'
#' @export
fse_icao_fbos <- function(icao, ...) {
  fse_api(
    query="icao",
    search="fbo",
    icao = icao,
    ...
  )$content
}
