test_that("get_maintainers works", {
  expect_snapshot_output(get_maintainers("ggseg"))
})
