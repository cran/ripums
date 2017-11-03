# This file is part of the Minnesota Population Center's ripums.
# For copyright and licensing information, see the NOTICE and LICENSE files
# in this project's top-level directory, and also on-line at:
#   https://github.com/mnpopcenter/ripums

# Rcpp for reading hierarchical data
#' @useDynLib ripums
#' @importFrom Rcpp sourceCpp
NULL

# Import all of rlang
#'@import rlang
NULL

# Import and reexport helpful label functions from haven
#' @importFrom haven as_factor
#' @export
haven::as_factor

#' @importFrom haven zap_labels
#' @export
haven::zap_labels

#' @importFrom haven is.labelled
#' @export
haven::is.labelled

# ---- Select Helpers ----

#' Select-style helpers from dplyr
#'
#' Several arguments in \code{ripums} allow syntax for selecting variables
#' based on dplyr's \code{\link[dplyr]{select}} function. See details for more information.
#'
#' There are 3 broad categories of methods for specifying arguments for these select-style
#' parameters.
#' \itemize{
#'  \item{"Character Vector"}{A character vector of names (such as \code{c("var1", "var2", "var3")})}
#'  \item{"'Bare' Vector"}{A vector of 'bare' names (such as \code{c(var1, var2, var3)})}
#'  \item{"Helper Functions"}{Helper functions from \code{dplyr::select} such as
#'     \code{starts_with()}, \code{contains} and others.}
#' }
#' @examples
#' # For microdata, use this syntax to load variables
#' # Load 3 variables by name
#' cps_file <- ripums_example("cps_00006.xml")
#' data <- read_ipums_micro(cps_file, vars = c("YEAR", "MONTH", "PERNUM"))
#'
#' # Load same 3 variables using bare names
#' data <- read_ipums_micro(cps_file, vars = c(YEAR, MONTH, PERNUM))
#'
#' # Use helper functions to load all variables that start with "WT"
#' data <- read_ipums_micro(cps_file, vars = starts_with("WT"))
#'
#' # Use bare names and helper function to load YEAR, MONTH and all variables with 'INC' in name
#' data <- read_ipums_micro(cps_file, vars = c(YEAR, MONTH, contains("INC")))
#'
#' # For geographic extracts, `data_layer` and `shape_layer` arguments use the same conventions
#' # to select file names from within zip files.
#' # (This extract only contains 1 type of file, but some have multiple)
#' csv_file <- ripums_example("nhgis0008_csv.zip")
#' data <- read_nhgis(
#'   csv_file,
#'   data_layer = contains("pmsa")
#' )
#'
#' @name dplyr_select_style
NULL

#' @importFrom dplyr starts_with
#' @export
dplyr::starts_with

#' @importFrom dplyr ends_with
#' @export
dplyr::ends_with

#' @importFrom dplyr contains
#' @export
dplyr::contains

#' @importFrom dplyr matches
#' @export
dplyr::matches

#' @importFrom dplyr num_range
#' @export
dplyr::num_range

#' @importFrom dplyr starts_with
#' @export
dplyr::starts_with

#' @importFrom dplyr one_of
#' @export
dplyr::one_of

#' @importFrom dplyr everything
#' @export
dplyr::everything


