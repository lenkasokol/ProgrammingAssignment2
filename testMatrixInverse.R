########################### run this code in the R editor ##########
  # initialize the function "makeCacheMatrix.R" in current R editor
> source("makeCacheMatrix.R")
  # initialize the function "cacheSolve.R" in current R editor
> source("cacheSolve.R")

 # Create a new matrix   
> amatrix = makeCacheMatrix(matrix(c(41,42,43,44), nrow=2, ncol=2))
 
 # GET oriinal matrix  
> amatrix$get()
     [,1] [,2]
[1,]   41   43
[2,]   42   44

  #Computes, caches, and returns    matrix inverse
> cacheSolve(amatrix) 
     [,1]  [,2]
[1,]  -22  21.5
[2,]   21 -20.5

 # Returns matrix inverse
> amatrix$getinverse() 
     [,1]  [,2]
[1,]  -22  21.5
[2,]   21 -20.5

 # Returns cached matrix inverse using previously computed matrix inverse
> cacheSolve(amatrix)  
getting cached data
     [,1]  [,2]
[1,]  -22  21.5
[2,]   21 -20.5

 # Modify existing matrix
amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2)) 
  # Computes, caches, and returns new matrix inverse
> cacheSolve(amatrix)  
            [,1] [,2]
[1,] -0.13333333  0.2
[2,]  0.01010101  0.0

 # GET original matrix 
> amatrix$get()
     [,1] [,2]
[1,]    0   99
[2,]    5   66  
    
 # Returns matrix inverse
> amatrix$getinverse() 
            [,1] [,2]
[1,] -0.13333333  0.2
[2,]  0.01010101  0.0

 # getting cached data
> cacheSolve(amatrix) 
getting cached data
            [,1] [,2]
[1,] -0.13333333  0.2
[2,]  0.01010101  0.0