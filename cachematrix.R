## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

## Write a short comment describing this function

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
