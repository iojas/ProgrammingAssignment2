<<<<<<< HEAD
makeCacheMatrix <- function(x = numeric()) {
  
  cache <- NULL
  
  setMatrix <- function(newValue) {
    x <<- newValue
    
    cache <<- NULL
  }
  
  
  getMatrix <- function() {
    x
  }
  
  
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  
  
  getInverse <- function() {
    cache
  }
  
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


cacheSolve <- function(y, ...) {
  inverse <- y$getInverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  inverse
}
=======
makeCacheMatrix <- function (X=matrix()){
  
  inv<-NULL
  set <- function (y){
    x<<-y
    inv<<-NULL
  }
  get<- function() {
    x
  }
  setinverse<- function(inverse){
    inv<-inverse
  }
  getinverse<-function()
  {
    inv
  }
  list(set=set,get=get, setinverse=setinverse, getinverse=getinverse)
  
}

cacheSolve<- function (x){
  inv<-x$getinverse()
  if(!is.null(inv))
  {
    message ("Getting cached data")
    return(inv)
  }
  m <- x$get()
  inv<- solve(m)
  x$setinverse(inv)
  inv
}
>>>>>>> origin/master
