## Put comments here that give an overall description of what your
## functions do
##Writing two functions to catch the inverse of matrix.
#Setting the value of the matrix, getting the value of the matrix, set the value of matrix, get the value of the matrix


## Write a short comment describing this function
#makecachematrix: a function to create a matrix object that cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## cachecolve function to compute inverse of special matrix returned by makeCacheMatrix above.
## Solve function returns its inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
