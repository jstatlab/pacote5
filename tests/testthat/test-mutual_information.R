test_that("multiplication works", {
  expect_lt(
    {
      set.seed(1000)
      m <- matrix(rnorm(1e6), nrow = 1000)
      mutual_information(m)
    },
    -3.1
  )
})
