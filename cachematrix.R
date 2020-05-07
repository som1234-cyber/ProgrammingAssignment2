## These two functions are used to calcuate the inverse of a given matrix.


## The following function creates a marix and returns a set of list of functions.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function(){ 
    x}
  setinverse <- function(inv) {
    m <<- inv}
  getinverse <- function(){ 
    m}
  list(set = set,get = get, setinverse = setinverse,getinverse = getinverse)
  
}


## The following function calculates the inverse of a matrix,

cacheSolve <- function(x = matrix()) {
  m <- x$getinverse() 
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
