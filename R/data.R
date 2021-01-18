#' @export
get_MktgAnalytics_data <- function(name = NULL) {
	name <- tolower(name)

	e <- new.env(parent = environment())
	if (name %in% c('module-9-tutorial')) {
		utils::data('m9_rfm', package = 'MktgAnalyticsCourse', envir = e)
		assign('d', e$m9_rfm, envir = e)
	}
	e$d
}
