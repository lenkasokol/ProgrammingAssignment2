## `cacheSolve`: This function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` should retrieve the inverse from the cache.

	cacheSolve <- function(x, ...){
	inverse <- x$getinverse()

	## the code below checks, if there is a cash for the given matrix x, 
	## if so, then it is getting data from the cache, and return
	## result = inverse from the cache
		if(!is.null(inverse)){
			message("getting cached data")
			return(inverse)
		}
	## if there is no cache, then inverse calculated
	## by using the solve() function 
		data <- x$get()
		inverse <- solve(data, ...)
	## cache inverse 
		x$setinverse(inverse)
	## return value of inverse
		inverse
}