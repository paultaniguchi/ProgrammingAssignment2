## Put comments here that give an overall description of what your
## functions do
## 

## Write a short comment describing this function
## function makeCacheMatrix
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


## Write a short comment describing this function
# function cacheSolve returns the inverse of a matrix
# either by calculating a new one or returning a cached matrix
# this requires the function makeCacheMatrix
# input: makeCacheMatrix object
# output: matrix
cacheSolve <- function(x, ...) {
        
        # check for cached inverse matrix & return it if it exists
        
        # calculate new inverse matrix for no cached value
        
        ## Return a matrix that is the inverse of 'x'
}
