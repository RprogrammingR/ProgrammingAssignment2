## My makeCacheMatrix function for cacheing the inversere of the matrix and
 ## preventing it from computing repeatedly:
 makeCacheMatrix <- function(x = matrix()) {
 
     n <- NULL
     set <- function(y) {
       x <<- y
       n <<- NULL
     }
     get <- function() x
     setinv <- function(solve) n <<- solve
     getinv <- function() n
     list(set = set, get = get, setinv = setinv, getinv = getinv)
 }
 

 ## My cacheSolve function for computing the inverse of the matrix. It will 
 ## retrieve the inverse from the cache if it has already been calculated:
 cachesolve <- function(x, ...) { 
     n<- x$getinv()
     if(!is.null(n)) {
       message("getting cached data")
       return(n)
     }
     data <- x$get()
     n<- solve(data, ...)
     x$setinv(i)
     n
 }
 
