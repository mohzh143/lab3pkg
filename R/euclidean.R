#' Greatest Common Divisor (Euclidean Algorithm)
#'
#' @description Compute the greatest common divisor of two integers
#' @param a,b Numeric scalars
#' @return Integer scalar: the Greatest Common Divisor of a and b.
#' @examples
#' euclidean(123612, 13892347912)
#' euclidean(100, 1000)
#' @references \url{https://en.wikipedia.org/wiki/Euclidean_algorithm}
#' @export


euclidean <- function(a, b) {
  stopifnot(is.numeric(a), length(a) == 1,
            is.numeric(b), length(b) == 1
            )

  stopifnot(a == round(a), b == round(b))

  a <- abs(round(a))
  b <- abs(round(b))

  if (a == 0 && b == 0)
    return(0L)

  # Keep replacing with the smaller number and the remainder
  # until the remainder becomes 0
  while (b != 0) {
    tmp <- b
    b <- a %% b
    a <- tmp
  }
  return(a)

}
