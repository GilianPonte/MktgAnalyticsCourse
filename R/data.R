#' Access data sets used for tutorials and problem sets
#'
#' @param name The name of the data set
#' @return An object, typically a data frame
#' @examples
#' ols_data <- get_MktgAnalytics_data("ps-1-ols")
#'
#' @export
#'
get_MktgAnalytics_data <- function(name = NULL) {
	name <- tolower(name)

	e <- new.env(parent = environment())
	if (name %in% c('module-9-tutorial')) {
		utils::data('m9_rfm', package = 'MktgAnalyticsCourse', envir = e)
		assign('d', e$m9_rfm, envir = e)
	}
	if (name %in% c('module-4-tutorial')) {
	  utils::data('m4_conjoint', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$m4_conjoint, envir = e)
	}
	if (name %in% c('ps-1-ols')) {
	  utils::data('ps1_ols', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$ps1_ols, envir = e)
	}
	if (name %in% c('ps-1-logistic')) {
	  utils::data('ps1_logistic', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$ps1_logistic, envir = e)
	}
	if (name %in% c('ps-2-conjoint')) {
	  utils::data('ps2_conjoint', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$ps2_conjoint, envir = e)
	}
	e$d
}
