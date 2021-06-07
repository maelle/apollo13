#' Packages
#'
#' @param universe universe to query
#'
#' @return A character vector.
#' @export
#'
get_packages2 <- function(universe) {
  url <- sprintf("https://%s.r-universe.dev/packages", universe)
  token <- Sys.getenv("SECRET_PLANET_TOKEN")
  if (!nzchar(token)) {
    stop("Token for packages not found. See ?get_packages2")
  }

  resp <- httr::RETRY("GET", url,
    httr::add_headers("Authorization" = paste("token", token)))
  httr::stop_for_status(resp, "take off")
  content <- httr::content(resp)
  unlist(content)
}
