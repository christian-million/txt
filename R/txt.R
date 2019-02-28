#'
#'@export
txt_insert <- function(x, vect, pos){

  if(pos == length(vect)){
    out <- c(vect, x)
  } else {
    top <- vect_top(vect, pos)
    bottom <- vect_bottom(vect, (length(vect) - pos))
    out <- c(top, x, bottom)
  }

  return(out)

}

#'
#'@export
txt_remove <- function(vect, pos){

  out <- vect[-(pos)]

  return(out)
}

#'
#'@export
txt_replace <- function(x, vect, pos){

  vect[pos] <- x

  return(vect)
}

#'
#'@export
txt_append <- function(x, vect, add_break = FALSE){

  if(add_break == TRUE) x <- c("", x)

  out <- txt_insert(x, vect, pos = length(vect))

  return(out)

}
