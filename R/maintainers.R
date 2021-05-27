#' Maintainers
#'
#' @inheritParams get_packages
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' get_maintainers("ggseg")
get_maintainers <- function(universe) {
  url <- sprintf("https://%s.r-universe.dev/stats/maintainers", universe)
  resp <- httr::GET(url)
  httr::stop_for_status(resp)
  content <- httr::content(resp)
  temp_file <- withr::local_tempfile()
  writeLines(content, temp_file)
  maintainers <- jsonlite::stream_in(file(temp_file), verbose = FALSE)
  tibble::as_tibble(maintainers)
}
