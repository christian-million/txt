#'
#'@export
txt_insert <- function(x, vect, pos){

  top <- vect_top(vect, pos)
  bottom <- vect_bottom(vect, (length(vect) - pos))
  out <- c(top, x, bottom)

  return(out)

}

# txt_insert(text, vect, 3)
#'
#'@export
txt_remove <- function(vect, pos){

  out <- vect[-(pos)]

  return(out)
}
