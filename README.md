
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

-   \[X\] Create README
-   \[ \] Error / Exception Handling
-   \[ \] Document all functions
-   \[ \] Provide useful examples
-   \[ \] Create toy vector (sample\_script) that captures lots of cases
-   \[ \] Restructure the functions to accept multiple positions. (e.g., `txt_insert("a", letters, pos = c(2, 3, 4))`)
-   \[ \] Why are functions like `txt::txt_append()` better than `base::append()`? Standard syntax?
-   \[ \] Identify how to easily incorporate something like `stringr` to accomplish the following:

    -   \[ \] Append to specific vector elements (e.g., `char_append(text = "+", vect, pos)`)

    -   \[ \] When using `find_text()`, remove all spaces in text and vect to disregard formatting

-   \[ \] Identify useful way to add indents to specific element to make formatting pretty. `styler`?
