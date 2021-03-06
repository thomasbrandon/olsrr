context("step_forward")

test_that("forward selection output matches the expected result", {
  model <- lm(y ~ x1 + x2 + x3 + x4, data = cement)
  k <- ols_step_forward_p(model)
  expect_equal(k$steps, 3)
  expect_equivalent(k$predictors, c("x4", "x1", "x2"))
})

