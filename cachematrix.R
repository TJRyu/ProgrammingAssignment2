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
        
        inverse <- x$getInverse()
        
        if (!is.null(inverse)) {
                message("Getting cached data")
                return(inverse)
        }
        
        mat <- x$get()
        inverse <- solve(mat, ...)
        x$setInverse(inverse)
        print(inverse)
}

## Test Case.
##
## > source("cachematrix.R")
## > myMatrix <- makeCacheMatrix(matrix(1:4, 2, 2))
## > myMatrix$get()
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
## 
## > cacheSolve(myMatrix)
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
##
## Check.
## Matrix(A)
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
##
## Inverse Matrix(A)
##                        [,1] [,2]
## (1 / (4 - 6)) *  [1,]    4   -3
##                  [2,]   -2    1
##
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5