cacheSolve <- function(x, ...){
	inverse <- x$getinverse()
	if(!is.null(inverse)){
			message("getting cached data")
			return(inverse)
	}
	data <- x$get()
	inverse <- solve(data, ...)
	x$setinverse(inverse)
	inverse
}

################# INFO  ############################
	#function calculate inverse of the special 
	#matrix, returned by the function 
	#makeCacheMatrix()

	#Computing the inverse of a square matrix can
	# be done with the solve function in R. 
	#For example, if X is a square
	# invertible matrix, then solve(X) returns its inverse.
	#For this assignment, assume that the matrix supplied 
		#####is always invertible.	
