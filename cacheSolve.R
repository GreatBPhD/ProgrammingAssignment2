cacheSolvebad <- function(x, ...) {
  iM <- x$getSolve()
  if(!is.null(iM)) {
    message("getting cached data")
    return(iM)
  }
  data <- x$get()
  iM <- solve(data, ...)
  x$setSolve(iM)
  iM
}