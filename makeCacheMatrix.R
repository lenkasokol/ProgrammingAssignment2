## `makeCacheMatrix`: This function creates a special "matrix" object
## that can cache its inverse.

	makeCacheMatrix <- function(x = matrix()){
	## declare an empty variable "inverse"
		inverse <- NULL

	## Create a functions set, get, setinverse and getinverse 

	## the set is uses a superassignment operator `<<-` operator 
	## which can be used to assign a value to an object
	## in an environment that is different from the current environment. 
		set <- function(y) {
			x <<- y
			inverse <<- NULL
		}
	
	## get function, gets matrix
		get <- function() x 

	## setinverse function, inverse the matrix x, using
	## library function "solve", that actually doing inversion
		setinverse <- function(solve) inverse <<- solve

	## getinverse function returns inversed matrix
		getinverse <- function() inverse

	## list contains all function above in the list, 
	## so, when function called, first the makeCacheMatrix checks, 
	## if function exist, by looking at the "list" collection
		list(set = set, get = get, setinverse = setinverse, getinverse=getinverse)
}
