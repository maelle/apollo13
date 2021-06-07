test_that("get_packages() works", {
  vcr::use_cassette("packages", {
    pkgs <- get_packages("maelle")
  })
  expect_vector(pkgs, character())
})

test_that("get_packages() error", {
  vcr::skip_if_vcr_off()
  vcr::use_cassette("packages-error", {
    expect_error(get_packages("maelle"), "take off")
  })
})
test_that("get_packages() retries", {
  vcr::skip_if_vcr_off()
  vcr::use_cassette("packages-retry", {
    expect_message(pkgs <- get_packages("maelle"), "try")
  })
  expect_vector(pkgs, character())
})


