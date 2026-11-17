test_that("Adding a 20% tip to a subtotal of $10 returns $12", {
  expect_equal(calculate_tip(10, 20), 12)
})

test_that("Adding a 20% tip to a subtotal of $0 returns $0", {
  expect_equal(calculate_tip(0, 20), 0)
})

test_that("Adding no tip to a subtotal of $10 returns $10", {
  expect_equal(calculate_tip(10, 0), 10)
})

test_that("Entering a negative subtotal returns an error", {
  expect_error(calculate_tip(-30, 20))
})

test_that("Entering a negative tip percentage returns an error", {
  expect_error(calculate_tip(30, -20))
})

test_that("Entering a non-numeric tip percentage returns an error", {
  expect_error(calculate_tip(30, "none :("))
})
