#'
#'@export
vect_top <- function(vect, pos){

  top <- vect[1:pos]

  return(top)
}

#'
#'@export
vect_bottom <- function(vect, pos){

  pos2 <- length(vect) - (pos - 1)

  bottom <- vect[pos2:length(vect)]

  return(bottom)

}

#'
#'@export
vect_print <- function(vect){

  cat(vect, sep = "\n")

}
