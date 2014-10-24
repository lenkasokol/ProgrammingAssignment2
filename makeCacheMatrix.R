makeCacheMatrix <- function(x = matrix()){
	inverse <- NULL
	set <- function(y) {
			x <<- y
			inverse <<- NULL
	}
	
	get <- function() x
	setinverse <- function(solve) inverse <<- solve
	getinverse <- function() inverse

	list(set = set, get = get, setinverse = setinverse, getinverse=getinverse)
}

########################### working code ##########
## 1. amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
## 2. amatrix$get()
## 3. cacheSolve(amatrix) ##Computes, caches, and returns    matrix inverse
## 4. amatrix$getinverse()  # Returns matrix inverse
## 5. cacheSolve(amatrix)   # Returns cached matrix inverse using previously computed matrix inverse
## 6. amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2)) # Modify existing matrix
## 7. cacheSolve(amatrix)   # Computes, caches, and returns new matrix inverse
## 8. amatrix$get()         # Returns matrix
## 9. amatrix$getinverse()  # Returns matrix inverse