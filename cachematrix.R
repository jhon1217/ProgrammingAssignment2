## Put comments here that give an overall description of what your
##makeCachematrix consists of set, get, setinverse,getinverse
makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}       #funtion to get matix x
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}      #funtion to obtain inverse of the matrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

makeCacheMatrix <- function(x = matrix()) {

}

## Write a short comment describing this function
##this is used to get the cache data
cacheSolve <- function(x, ...){  ##gets cache data
  inv <- x$getInverse()
  if(!is.null(inv)){         #checking whether inverse is null
    message("getting cached data")
    return(inv)  #return inverse value
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv   ##Return a matrix that is the inverse of x
}
