## the makeCacheMatrix() function gets matix
## and then saved inverse of this matrix in cache

	makeCacheMatrix <- function(x = matrix()){
	## declare an empty variable "inverse"
		inverse <- NULL

	## Create a functions set, get, setinverse and getinverse  
	## set is sets a matrix x
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
