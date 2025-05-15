#' Load M&E Data
#'
#' Loads and validates M&E data from a CSV file.
#' @param filepath Path to the data file.
#' @return A data.frame of cleaned data.
#' @export
load_data <- function(filepath) {
  data <- readr::read_csv(filepath)
  stopifnot(is.data.frame(data))
  return(data)
}
