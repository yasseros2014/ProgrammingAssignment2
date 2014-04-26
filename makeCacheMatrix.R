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