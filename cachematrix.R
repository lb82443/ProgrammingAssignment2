## makeCacheMatrix will create a matrix that can cache its inverse
## cacheSolve computes the inverse of the matrix, if already
## calculated then use calculated version

## here I create the inverse of the matrix and pass to the calling environment
## by using the <<- operator
## We will also need to pass the matrix inverted to the calling environment so it 
## can be compared later on to ensure that it has not changed. ( csh_matrix)

makeCacheMatrix <- function(x=matrix()) {
  
  inv <<- solve(x)
  csh_matrix <<- x
  return(inv)

}


## This function checks to see if inv exists, if so
## then return it else calculate the inverse and return that
## We also compare the attributes of the passed matrix to 
## the matrix we cached in makeCacheMAtrix to ensre it has not changed
## if it has changed we go ahead and solve it 

cacheSolve <- function(x, ...) {
  
   if (length(inv) > 0 && dim(x) == dim(csh_matrix) && all(x == csh_matrix)) {return(inv)} else 

     {inv <- solve(x) }
   
     return(inv)   
}
