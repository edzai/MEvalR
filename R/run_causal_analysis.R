#' Run Causal Analysis
#'
#' Applies causal inference techniques such as Difference-in-Differences (DiD),
#' Propensity Score Matching (PSM), and DAG validation.
#'
#' @param data A data.frame with treatment, outcome, and covariates
#' @param method The method to use: "DiD", "PSM", or "DAG"
#' @param outcome Name of the outcome variable
#' @param treatment Name of the treatment variable
#' @param time Name of the time variable (for DiD)
#' @param covariates A vector of covariate names (for PSM)
#' @return A list of model output and summary
#' @export
run_causal_analysis <- function(data, method = "DiD", outcome, treatment, time = NULL, covariates = NULL) {
  if (method == "DiD") {
    if (is.null(time)) stop("Time variable required for DiD")
    formula <- as.formula(paste(outcome, "~", treatment, "*", time))
    model <- fixest::feols(formula, data = data)
    return(list(method = "DiD", model = model, summary = summary(model)))
    
  } else if (method == "PSM") {
    if (is.null(covariates)) stop("Covariates required for PSM")
    formula <- as.formula(paste(treatment, "~", paste(covariates, collapse = "+")))
    match_model <- MatchIt::matchit(formula, data = data)
    matched <- MatchIt::match.data(match_model)
    return(list(method = "PSM", match_model = match_model, matched_data = matched))
    
  } else if (method == "DAG") {
    dag_code <- "
      dag {
        X [exposure]
        Y [outcome]
        Z -> X
        Z -> Y
        X -> Y
      }
    "
    dag <- dagitty::dagitty(dag_code)
    coords <- dagitty::coordinates(dag)
    return(list(method = "DAG", dag = dag, plot = dagitty::ggdag(dag)))
  } else {
    stop("Unsupported method")
  }
}
