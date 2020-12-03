#' power function
#'
#' This function power the input.
#'
#' @param x input to be converted to the \code{power}
#' @param power Numeric input for the power that \code{x} will be raised to
#'   defaults to \code{2}.
#'
#' @keywords power
#' @return Numeric representing \code{x} raised to the power of \code{power}
#'
#' @examples
#' my_pow(4)
#' my_pow(4, power =2)
#'
#' @export
my_pow <- function(x, power =2){
        return(x^power)
}
