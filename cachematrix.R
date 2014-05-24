## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  xInverse <- NULL
  
  set <- function(y){
    x <<- y
    xInverse <<- NULL
  }
  
  get <- function(){
    x
  }
  
  setInverse <- function(yInverse){
    xInverse <<- yInverse
  }
  
  getInverse <- function(){
    xInverse
  }
  
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'

  inverse = x$getInverse()
  
  if(is.null(inverse)){
    newInverse = solve(x$get())
    x$setInverse(newInverse)
    return (newInverse)
  }
  
  message("Cached Inversion:")
  return (inverse)
  
}
