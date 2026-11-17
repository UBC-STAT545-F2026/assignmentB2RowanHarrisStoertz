#' @export
#' @title Tip calculator
#'
#' @description
#' This function calculates the total price including a tip, given a subtotal and chosen tip percentage
#'
#' @param subtotal a numeric value representing the cost before the tip (this parameter is named "subtotal" because the cost before the tip is added is commonly referred to as the subtotal)
#' @param tip_percentage a numeric value representing the desired tip percentage (this parameter is named "tip_percentage" because it indicates the percentage that the user wishes to tip)
#'
#' @return a numeric value indicating the total after the desired tip is added
#'
#'@examples
#'calculate_tip(41.25, 20) #calculate the total for a $41.25 subtotal with a 20% tip
#'calculate_tip(115, 15) #calculate the total for a $115 subtotal with a 15% tip
#'calculate_tip(c(42, 35), c(20, 18)) #calculate totals for $42 with a 20% tip and $35 with an 18% tip
#'
calculate_tip <- function(subtotal, tip_percentage) {

  if (!all(is.numeric(subtotal))) {
    stop("subtotal must be numeric") #throw an error message if the subtotal is not numeric
  }

  if (!all(is.numeric(tip_percentage))) {
    stop("tip_percentage must be numeric") #throw an error message if the tip percentage is not numeric
  }

  if (any(tip_percentage < 0)) {
    stop("tip_percentage cannot be negative") #throw an error message if the tip percentage is less than 0
  }

  if (any(subtotal < 0)) {
    stop("subtotal cannot be negative") #throw an error message if the subtotal is less than or equal to 0
  }

  total <- subtotal + subtotal * tip_percentage / 100 #calculate the total including the tip

  return(round(total, 2)) #round the total to two decimal places and return it
}
