
<!-- README.md is generated from README.Rmd. Please edit that file -->
txt
===

The goal of txt is to identify the position of desired character vector elements. This package will probably be used in another package which will need to read, write to, and modify R scripts using `readLines`. This package will help identify where to insert or remove specific lines.

Installation
------------

You can install txt from GitHub using the following code:

``` r
remotes::install_github("christian-million/txt")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
# library(txt)

## Find the first empty line after the "#### Load Necessary Packages" comment in my script.

# my_script <- readLines("path/to/my_script.R")
# find_first_after("", my_script, "#### Load Necessary Packages")

## Add "library(dplyr)" before the first empty line after the "#### Load Necessary Packages" comment in my script.
# my_new_script <- txt_insert(text = "library(dplyr)", vect = my_script, pos = (find_first_after("", my_script, "#### Load Necessary Packages") - 1))

## Write over previous script
# write_utf8("path/to/my_script.R", my_new_script)
```

To-Do
-----

-   \[ \] Error / Exception Handling
-   \[ \] Document all functions
-   \[ \] Provide useful examples
-   \[ \] Create toy vector that capture lots of cases
-   \[ \] Restructure the functions to accept multiple positions. (e.g., `txt_insert("a", letters, pos = c(2, 3, 4))`)
