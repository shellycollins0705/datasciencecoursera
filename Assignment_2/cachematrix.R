##the following two functions create the inverse 
##of a matrix once created

##makeCacheMatrix creates the matrix object that can cache its inverse

directory <- getwd()
makeVector <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
get <- function() x
setmatrix <- function(matrix) m<<- matrix
getmatrix <- function() m
list(set = set, get = get,
     setmatrix = setmatrix,
     getmatrix = getmatrix)
}

##cacheSolve computes the inverse of makeCacheMatrix

cacheSolve <- function( ...){
     m <- x$getmatrix()
if(!is.null(m)){
     message("getting cached data")
     return(m)
}
data <- x$get()
m <- matrix(data, ...)
x$setmatrix(m)
m
}

