# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application
##
## /!\ Note: if you want to change the name of your app during development,
## either re-run this function, call golem::set_golem_name(), or don't forget
## to change the name in the app_sys() function in app_config.R /!\
##
golem::fill_desc(
  pkg_name = "fileconverter", # The Name of the package containing the App
  pkg_title = "A Swiss-Army Knife GUI for Data I/O", # The Title of the package containing the App
  pkg_description = "Streamlined data import and export by making assumptions that the user is probably willing to make. Determines the data structure from the file extension, reasonable defaults are used for data import and export (e.g., 'stringsAsFactors=FALSE'), web-based import is supported (including SSL/HTTPS), some compressed files can be read directly without explicit decompression, and fast import packages are used where appropriate.", # The Description of the package containing the App
  author_first_name = "Mauricio", # Your First Name
  author_last_name = "Vargas Sepulveda", # Your Last Name
  author_email = "mavargas11@uc.cl", # Your Email
  repo_url = "https://github.com/pachadotdev/fileconverter" # The URL of the GitHub Repo (optional)
)

## Set {golem} options ----
golem::set_golem_options()

## Create Common Files ----
## See ?usethis for more information
usethis::use_mit_license("Mauricio Vargas Sepulveda") # You can set another license here
usethis::use_readme_rmd(open = FALSE)
# Note that `contact` is required since usethis version 2.1.5
# If your {usethis} version is older, you can remove that param
usethis::use_code_of_conduct(contact = "Mauricio Vargas Sepulveda")
usethis::use_lifecycle_badge("Stable")
usethis::use_news_md(open = FALSE)

## Use git ----
usethis::use_git()

## Init Testing Infrastructure ----
## Create a template for tests
golem::use_recommended_tests()

## Favicon ----
# If you want to change the favicon (default is golem's one)
golem::use_favicon() # path = "path/to/ico". Can be an online file.
# golem::remove_favicon() # Uncomment to remove the default favicon

## Add helper functions ----
golem::use_utils_ui(with_test = TRUE)
golem::use_utils_server(with_test = TRUE)
usethis::use_r("fileconverter-package")

# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile("dev/02_dev.R")
