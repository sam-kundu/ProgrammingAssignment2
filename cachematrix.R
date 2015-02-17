## [Put comments here that describe what your functions do]

makeCacheMatrix <- function(x = matrix()) {
  # assign value of x and inverse to cache variables
  mymatrix <<- x
  inv <<- solve(x)
}
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  #if matrix is unchanged, get cache of calculated inverse
  if (identical(mymatrix,x)==T){
    xinv <- inv
    print("got cached value")
  }
  else{  #if matrix has changed, compute inverse
  xinv <- solve(x)
  }
}