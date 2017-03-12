context("Testing column description data")

test_that("column data has three columns", {
  expect_equal( ncol(columns), 3)
})

test_that("there are no NAs", {
  expect_false( any(is.na(columns$column)))
  expect_false( any(is.na(columns$feed)))
  expect_false( any(is.na(columns$description)))
})
