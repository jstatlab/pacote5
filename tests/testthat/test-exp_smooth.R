test_that("exp_smooth works", {
  expect_lt(
    {
      set.seed(1000)
      y <- cumsum(rnorm(1e6))
      ys <- exp_smooth(y, 0.8)
      mean(ys, na.rm = TRUE)
    },
    438
  )
})
