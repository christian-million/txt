#'
#'@export
find_text <- function(text, vect){

  if(any(vect == text)){
    out <- which(vect == text)
  } else {
    out <- 0
  }

  return(out)

}
#'
#'@export
find_nth <- function(text, vect, nth){

  vect <- find_text(text, vect)

  return(vect[nth])

}
#'
#'@export
find_first <- function(text, vect) {

  out <- find_nth(text, vect, nth = 1)

  return(out)

}
#'
#'@export
find_last <- function(text, vect) {

  out <- find_nth(text, vect, nth = length(find_text(text, vect)))

  return(out)

}
#'
#'@export
find_nth_after <- function(text, vect, nth, after){

  pos <- find_first(after, vect)
  top <- vect_top(vect, pos)
  bottom <- vect_bottom(vect, (length(vect) - pos))

  pos2 <- find_nth(text, bottom, nth)

  if(pos2 == 0){
    out <- 0
  } else {
    out <- length(top) + pos2
  }

  return(out)

}
#'
#'@export
find_nth_before <- function(text, vect, nth, before){

  pos <- find_first(before, vect)
  top <- vect_top(vect, pos)

  pos_temp <- find_text(text, top)

  pos2 <- pos_temp[length(pos_temp) - nth + 1]

  if(pos2 == 0){
    out <- 0
  } else {
    out <- pos2
  }

  return(pos2)

}
#'
#'@export
find_first_after <- function(text, vect, after){

  out <- find_nth_after(text, vect, nth = 1, after)

  return(out)

}
#'
#'@export
find_first_before <- function(text, vect, before){

  out <- find_nth_before(text, vect, nth = 1, before)

  return(out)

}
