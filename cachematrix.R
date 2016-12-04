## Put comments here that give an overall description of what your
## functions do

##	cache matrix inverse 

makeCacheMatrix <- function(x = matrix()) {
	
        invm <- NULL
	set <- function(y) {
		x <<- y
	        invm <<- NULL
	}
	get <- function() x
	setinverse <- function(inversem) invm <<- inversem
	getinverse <- function() invm
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)

}


B
## calculate the matrix inverse using the code in makeCacheMatrix function above 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	invm <- x$getinverse()
        if(!is.null(invm)) {
		message("getting inverse data")
	        return(invm)
	}
	data <- x$get()
	invm <- try(solve(data, ...))
	x$setinverse(invm)
	invm
}


#  		how to call it / use it example:

#hilbert <- function(n) { i <- 1:n; 1 / outer(i - 1, i, "+") }
#h8      <- hilbert(8); h8
#nmv     <- makeCacheMatrix( h8 )
#cvm     <- cacheSolve( nmv )
#nmv$getinverse()
#cat("all done\n")

