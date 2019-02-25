# Stolen from https://github.com/r-lib/usethis/blob/master/R/write.R

#'
#'@export
write_utf8 <- function(path, lines, append = FALSE) {

  stopifnot(is.character(path))
  stopifnot(is.character(lines))

  file_mode <- if (append) "a" else ""

  con <- file(path, open = file_mode, encoding = "utf-8")
  on.exit(close(con), add = TRUE)

  lines <- paste0(lines, "\n", collapse = "")
  cat(lines, file = con, sep = "")

  invisible(TRUE)
}
