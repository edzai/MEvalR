#' Evaluate Indicator Alignment
#'
#' Checks alignment between ToC indicators and observed data.
#' @param toc A ToCModel object.
#' @param data A data.frame containing indicator data.
#' @return A summary table of alignment.
#' @export
evaluate_alignment <- function(toc, data) {
  stopifnot("ToCModel" %in% class(toc))
  summary <- data.frame(
    element = c("Goals", "Outcomes", "Outputs"),
    found = c(
      all(toc$goals %in% colnames(data)),
      all(toc$outcomes %in% colnames(data)),
      all(toc$outputs %in% colnames(data))
    )
  )
  return(summary)
}
