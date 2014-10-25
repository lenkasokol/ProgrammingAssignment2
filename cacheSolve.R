## the cacheSolve() function calculate inverse of the special 
## matrix, returned by the function makeCacheMatrix()

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

################# INFO  ############################


	#Computing the inverse of a square matrix can
	# be done with the solve function in R. 
	#For example, if X is a square
	# invertible matrix, then solve(X) returns its inverse.
	#For this assignment, assume that the matrix supplied 
		#####is always invertible.	
