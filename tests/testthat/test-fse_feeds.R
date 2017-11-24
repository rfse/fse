context("Testing fse_aircraft_by_owner_name")


test_that("fse_aircraft_by_owner_name works silently", {
  expect_silent(
    r <- fse_aircraft_by_owner_name("skybike")
  )
})

test_that("fse_aircraft_by_owner_name gives error for nonexisting user", {
  expect_error(
    r <- fse_aircraft_by_owner_name("khaught")
  )
})

