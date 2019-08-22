context("Testing column description data")

test_that("column data has three columns", {
  expect_equal( ncol(columns), 3)
})

test_that("there are no NAs", {
  isna <- apply(columns, 1, function(r) any(is.na(r)))
  expect_false(
    any(isna),
    info = if (any(isna)) paste(
      capture.output(print(columns[isna,], row.names=FALSE)),
      collapse="\n"
    ) else NULL
  )
})
