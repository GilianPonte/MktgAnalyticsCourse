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
	if (name %in% c('ps-1-logistic1')) {
	  utils::data('ps1_logistic1', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$ps1_logistic1, envir = e)
	}
	if (name %in% c('ps-2-conjoint')) {
	  utils::data('ps2_conjoint', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$ps2_conjoint, envir = e)
	}
	if (name %in% c('module-8-tutorial')) {
	  utils::data('m8_aggregate', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$m8_aggregate, envir = e)
	}
	if (name %in% c('ps-4', 'ps-4-sales')) {
	  utils::data('ps4_aggregate', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$ps4_aggregate, envir = e)
	}
	if (name %in% c('module-10-abtest', 'ps-5-abtest')) {
	  utils::data('rta', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$rta, envir = e)
	}
	if (name %in% c('ps-5-demo')) {
	  utils::data('rta_demo', package = 'MktgAnalyticsCourse', envir = e)
	  assign('d', e$rta_demo, envir = e)
	}
	if (!is.null(e$d)) {
	  return(e$d)
	}
	msg <- paste0("\n\n  There is no data set named '", name, "'.\n\n  This could because you have misspelled the name of the data set,\n  or it might be due to the MktgAnalyticsCourse R package being\n  updated after you installed it.\n\n  To reinstall the MktgAnalyticsCourse R package, run the following R code:\n\n    unloadNamespace('MktgAnalyticsCourse')\n    remotes::install_github('GilianPonte/MktgAnalyticsCourse')\n\n")
  stop(msg)
}
