#' @export
survival_rate <- function(df, group_var) {
  counts <- table(df[[group_var]], df$survived)
  rates <- prop.table(counts, margin = 1)
  
  # Extract and return just the survival ("yes") column
  return(rates[, "yes"])
}