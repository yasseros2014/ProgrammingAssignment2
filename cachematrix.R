
##  A short comment describing makeCacheMatrix function
##
## this function has a list as an output, the following are the four functions
## -setM(): its role is to define the Matrix. The role of <<- operator
##         trigger a search strating from the parent environment
## -getM(): its role is to memorize the Matrix and call it as needed
## -setIn(): use to cache the Inverse of the matrix
## -getIn(): use to call the inverse of the matrix as needed

makeCacheMatrix <- function(x= matrix()){
        i <- NULL
        setM <- function(y){ 
                x <<- y
                i <<- NULL
        }
        getM <- function() x
        setIn <- function(Inv) i<<-Inv
        getIn <- function() i
        list(setM = setM, getM = getM,
             setIn = setIn,
             getIn = getIn)
}


## A short comment describing cacheSolve function
##
## This function has two mean roles :
## 1- it check if the invers of the matrix is all readly cached or not 
##by calling getIn() and checking the ouput
##
##2- it calculate and return the inverse of the matrix, also it cache the invers via setIn()
##function
##


cacheSolve <- function(x,...) {
        i <-x$getIn()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        myMtrix <- x$getM()
        i <- solve(myMtrix)
        x$setIn(i)
        i
}
