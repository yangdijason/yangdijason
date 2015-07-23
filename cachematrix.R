## define three functions: get(), setinverse(), getinverse(), 
## returning the list of functions. 

makeCacheMatrix <- function(x = matrix()) {

	inv <<- NULL

	get <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(get = get, setinverse = setinverse, getinverse = getinverse)
}


cacheSolve <- function(test) {
        ## Return a matrix that is the inverse of 'x'

	inv <- test$getinverse()
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	
	data <- test$get()
	inv <- solve(data)
	test$setinverse(inv)
	inv
}