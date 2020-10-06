makeCacheMatrix <- function(x = matrix()){
  iM <- NULL
  set <- function(y){
    x <<- y
    iM <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {iM <<- inverse}
  getInverse <- function() {iM}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(iM)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
