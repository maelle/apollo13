test_that("get_packages() works", {
  pkgs <- get_packages("maelle")
  expect_vector(pkgs, character())
})
