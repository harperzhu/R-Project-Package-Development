#' power function
#'
#' This function power the input.
#'
#' @param x input to be converted to the \code{power}
#'
#' @keywords temperature
#' @return Numeric representing \code{x} raised to the power of \code{power}
#'
#' @examples
#' my_power(4)
#' my_power(4, power =2)
#'
#' @export
my_pow <- function(x, power =2){
        return(x ^ power)
}
