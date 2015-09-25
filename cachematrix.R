<<<<<<< HEAD

##------------------------------------------------------------------------------------------------
## Objective : To calculate the inverse of a matrix and cache the result for retrieval later if necessary 
##
##
##
##------------------------------------------------------------------------------------------------
## Function : makeCacheMatrix
##
##    Description: Creates a list of the function commands set, get, setinverse and getinverse.
##
##    Step 1: initialise object "inv" to NULL
##    Step 2: set the global objects "x" and "inv"
##    Step 3: assign :-
##                   x to object get
##                   setinverse uses the function with input "solve" and assigns it to the global object "inv" 
##                   getinverse is assigned the value of "inv"
##    Step 4: Output:
##                   A list of the items assigned in the previous steps. 
##-----------------------------------------------------------------------------------------------

makeCacheMatrix <- function(x = matrix()) {
                 inv <- NULL
                 set <- function(y) {
                        x <<- y
                        inv <<- NULL
                        }
                 get <- function() x
          setinverse <- function(solve) inv <<- solve
          getinverse <- function() inv
                list(set = set, 
                     get = get,
                     setinverse = setinverse,
                     getinverse = getinverse)
}

##------------------------------------------------------------------------------------------------
## Function : cacheSolve
##
##    Description: if Inverse of matrix has been cached already the function retrieves the appropriate result. 
##                 Alternatively it calculates the result and stores the result.
##
##    Step 1: Uses the getinverse function to assign into the object "inv"
##    Step 2: if this value exists then the function retrieves and returns the result from the cache
##    Step 3: if not then it uses the get function to assign the matrix to the data object and calculates the inverse
##    Step 4: Output:
##                   returns the inverse of a matrix
##-----------------------------------------------------------------------------------------------

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
              inv <- x$getinverse()
                     if (!is.null(inv)) {
                                          message("getting cached data")
                                          return(inv)
                     }
             data <- x$get()
              inv <- solve(data,...)
              x$setinverse(inv)
              inv
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
