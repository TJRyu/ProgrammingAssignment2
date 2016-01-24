## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        inverse <- NULL
        
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        
        get <- function() x
        setInverse <- function(inv) inverse <<- inv
        getInverse <- function() inverse
        
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## Test Case.
##
## > source("cachematrix.R")
## > myMatrix <- makeCacheMatrix(matrix(1:4, 2, 2))
## > myMatrix$get()
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4

