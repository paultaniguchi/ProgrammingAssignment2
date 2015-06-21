## For Programming Assignment 2
## Paul Taniguchi
## makeCacheMatrix & cacheSolve computes the inverse of a matrix for a new
## matrix or retrieves the inverse from cache for old matrix

## Requires: matrix is square & invertible

## function makeCacheMatrix - creates a list of functions for storing a 
# matrix to cache, retrieving a matrix from cache, storing its inverse
# to cache & retrieiving its inverse from cache 
# cache is in the cacheSolve environment
## input: invertible square matrix
makeCacheMatrix <- function(origMatrix = numeric()) {
        
        # initializes the inverse matrix cache
        invertedMat <- NULL
        
        # stores the matrix
        setMatrix <- function(y) {
                origMatrix <<- y
                invertedMat <- NULL
        }
        
        # retrieves the matrix
        getMatrix <- function() origMatrix
        
        # stores a matrix into the inverse matrix cache
        setInverse <- function(matrixtosave) invertedMat <<- matrixtosave
        
        # retrieves the inverse matrix cache
        getInverse <- function() invertedMat
        
        # construct the list of the functions
        list( setMatrix = setMatrix, getMatrix = getMatrix, 
              setInverse = setInverse, getInverse = getInverse )
}


## function cacheSolve returns the inverse of a matrix
# either by calculating a new one or returning a cached matrix
# this requires the function makeCacheMatrix
# input: makeCacheMatrix object
# output: inverse matrix
cacheSolve <- function(newMatrix, ...) {
        
        # check for cached inverse matrix & return it if it exists
        newInverse <- newMatrix$getInverse()
        if (!is.null(newInverse)) {
                message('Getting cached inverse matrix')
                return(newInverse)
        }
        
        # calculate new inverse matrix for no cached value
        data <- newMatrix$getMatrix()
        # calculate inverse
        newInverse <- solve(data)
        # cache inverse
        newMatrix$setInverse(newInverse)
        
        ## Return a matrix that is the inverse of 'newMatrix'
        return(newInverse)
}