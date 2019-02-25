###### This is the script I use to build / update the txt package

# Set the working directory to where I want to build my package
# setwd("my/directory")

# Initially create package directory
devtools::create("txt")

# Save this file to directory and include in .Rbuildignore
devtools::use_build_ignore("txt_build_script.R")

usethis::use_description(fields = list(Title = "Find text positions in character vectors",
                                       Description = "Identify, remove, or add text in character vectors based on position. Ideally this package will used in another packahe that needs to read, modify, and write R scripts.",
                                       `Authors@R` = 'person("Christian", "Million", email = "christianmillion93@gmail.com", role = c("aut", "cre"))'))

## Create an Rmarkdown README file and edit it.
usethis::use_readme_rmd()

# Write my functions and add them to R file
# Document my functions bu putting #' and @params then::
devtools::document()

#Load a dataset into the working library then use
devtools::use_data()

#Document a Dataset by creating a .R file with the same name as the dataset.


# Where you are ready to install your package, use the following function
devtools::install()
