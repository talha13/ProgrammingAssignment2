## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix
# take matrix as input parameter and cache it
# set() function is used to set new matrix
# get() function is use to get cahced matrix
# setInverse() function is used to set inversion of matrix
# getInverse() function is used to get cahced inversion of matrix

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


## cacheSolve
# take special matrix as input parameter and return inversion of this matrix
# this function is used to get inversion of a matrix
# if a matrix inversion already cached then cached inversion return otherwise for new
# matix it calculate matix inversion using R solve() function and cache it 
# and return new inversion

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
