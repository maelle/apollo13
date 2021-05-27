test_that("get_packages() works", {
  vcr::use_cassette("packages", {
    pkgs <- get_packages("maelle")
  })
  expect_vector(pkgs, character())
})
