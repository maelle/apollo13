test_that("multiplication works", {
  vcr::use_cassette("packages2", {
    pkgs <- get_packages2("maelle")
  })
  expect_vector(pkgs, character())
})

test_that("get_packages2 errors well", {
  withr::local_envvar("SECRET_PLANET_TOKEN" = "")
  expect_snapshot_error(get_packages2("maelle"))
})

test_that("get_packages2 works well for me", {
  skip_if_not_beyonce()
  expect_equal(1+1, 2)
})
