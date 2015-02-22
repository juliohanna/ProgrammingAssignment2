## Put comments here that give an overall description of what your
## functions do
##caching the inverse of a matrix rather than computing it repeatedly

## Write a short comment describing this function
## makeCacheMatrix: This function creates a special "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setmatrix <- function(solve) m <<- solve
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmarix,
         getmatrix = getmatrix)

}


## Write a short comment describing this function
## the following function will return the inverse of a Matrix but if it s
## already calculated in the function above then it will get the result
## from the cache

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  
    m <- x$getmatrix()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
}
