#' Define a Theory of Change
#'
#' Creates a structured Theory of Change (ToC) object.
#' @param goals A character vector of impact goals.
#' @param outcomes A character vector of intermediate outcomes.
#' @param outputs A character vector of outputs.
#' @return A list representing the ToC.
#' @export
define_toc <- function(goals, outcomes, outputs) {
  toc <- list(
    goals = goals,
    outcomes = outcomes,
    outputs = outputs
  )
  class(toc) <- "ToCModel"
  return(toc)
}
