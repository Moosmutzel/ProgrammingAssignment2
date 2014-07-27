<<<<<<< HEAD
## GENERAL DESCRIPTION
## These functions can calculate the inverse of a matrix and cache it as
## well as retrieve the cached inverse again. 
## This is done by creating a list of functions in makeCacheMatrix, which
## are then used for saving or retrieving the matrix/inverse in cacheSolve.


## DETAILED DESCRIPTION
## The input of makeCacheMatrix is a matrix. The function creates 
## four other functions and returns these in a list (thus making 
## them public). These functions can SET or GET the matrix 
## whose inverse is supposed to be cached, as well as save or 
## output the inverse of that matrix (SETINVERSE & GETINVERSE).

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## The input of cacheSolve is the list created by makeCacheMatrix.
## Using the GETINVERSE-function, it checks first whether an inverse
## for the set matrix is already saved in the cache and if so returns it.
## If not, it GETs the matrix, calculates the inverse and saves it in
## the cache using the SETINVERSE-function. Then the inverse is printed.

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinverse(i)
	i
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
