## makeCacheMatrix will create a matrix that can cache its inverse
## cacheSolve computes the inverse of the matrix, if already
## calculated then use calculated version

## here I create the inverse of the matrix and pass to the calling environment
## by using the <<- operator

makeCacheMatrix <- function(x=matrix()) {
  
  inv <<- solve(x)
  return(inv)

}


## This function checks to see if inv exists, if so
## then return it else calculate the inverse and return that


cacheSolve <- function(x, ...) {
  
   if (length(inv) > 0 ) {return(inv)} else 

     {inv <- solve(x) }
   
     return(inv)   
}
