
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

This is a basic example:

``` r
library(txt)

# Print script to console
vect_print(sample_script) # sample_script vector included in txt package
#> #################
#> ## Example Script
#> ## Description:
#> ##  This script is an example script to demonstrate a potential application of the txt package
#> ##  The R Code run in this script is essentially meaningless.
#> #################
#> 
#> # Use a predetermined number of #'s to denote sections
#> 
#> #### Attach Necessary Packages
#> 
#> library(dplyr)
#> library(tidyr)
#> library(lubridate)
#> 
#> 
#> #### Data Load
#> my_mtcars <- mtcars %>%
#>               filter(cyl %in% c(6, 8))
#> 
#> 
#> #### Plot Data
#> ggplot(mtcars, aes(x = wt, y = mpg))
#>   geom_point()

# Remove space between package section and first package
new_script <- txt_remove(sample_script, find_first_after("", sample_script, "#### Attach Necessary Packages"))

# Add ggplot2 to package section
new_script <- txt_insert("library(ggplot2)", new_script, find_nth_before("", new_script, 2, "#### Data Load") - 1)

# Write script to working directory
write_utf8("new_script.R", new_script)

# Forgot to add something to end
write_utf8("new_script.R", c("","#### End Script"), TRUE)
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
