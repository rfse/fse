#' Statistics by read access key
#'
#' User statistics such as financials, number of flights and miles flown.
#'
#' @param accesskey FSE read access key
#'
#' @template feed2
#'
#' @return The object with the following columns/tags:
#'
#' @return - `Personal_balance` -- Money in the wallet
#' - `Bank_balance` -- Money in the bank
#' - `flights` -- Number of flights made to date
#' - `Total_Miles` -- Total number of NMs flown
#' - `Time_Flown` -- Total time in the air in `hh:mm`
#'
#' @export

fse_statistics_by_key <- function(accesskey, ...) {
  fse_api(
    query = "statistics",
    search = "key",
    readaccesskey = accesskey,
    ...
  )$content
}
