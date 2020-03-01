context("Testing fse_aircraft_by_owner_name()")


test_that("fse_aircraft_by_owner_name works silently", {
  expect_silent(
    r <- fse_aircraft_by_owner_name("skybike")
  )
  expect_s3_class(r, "data.frame")
})

test_that("fse_aircraft_by_owner_name gives error for nonexisting user", {
  skip("API errors not yet implemented")
  expect_error(
    r <- fse_aircraft_by_owner_name("xxxx")
  )
})






context("Testing fse_aircraft_by_makemodel()")

test_that("fse_aircraft_by_makemodel() works silently", {
  expect_silent(
    r <- fse_aircraft_by_makemodel("Cessna 172 Skyhawk")
  )
  expect_s3_class(r, "data.frame")
})
