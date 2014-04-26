## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

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
