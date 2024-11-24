## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Define makeCacheMatrix function by initializing a variable to store the cached inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL


## Function to set a new matrix and clear the cached inverse
set <- function(y) {
  x <<- y
  inv <<- NULL
  
}

## Function to get the matrix
get <- function() x

## Function to set the inverse
setInverse <- function(inverse) inv <<- inverse

## Function to get the cached inverse
getInverse <- function() inv

## Return a list of the above functions
list(set = set, get = get, 
     setInverse = setInverse,
    getInverse = getInverse)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ##Check if inverse is already cached
  inv <- x$getInverse()
  
  if(!is.null(inv)){
    
    message("getting cached data")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data, ...)
  
  x$setInverse(inv)
  
  inv
  
  }
