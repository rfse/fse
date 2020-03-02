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





context("Test fse_aircraft_status_by_registration()")

test_that("fse_aircraft_status_by_registration() works silently", {
  expect_silent(
    r <- fse_aircraft_status_by_registration("SP-4AX")
  )
  expect_s3_class(r, "data.frame")
  expect_equal(ncol(r), 4)
})







context("Test fse_icao_jobs_from()")

test_that("fse_icao_jobs_from() works silently with one airport", {
  expect_silent(
    r <- fse_icao_jobs_from("EPWA")
  )
  expect_s3_class(r, "data.frame")
})


test_that("fse_icao_jobs_from() works silently with more than one airport", {
  expect_silent(
    r <- fse_icao_jobs_from(c("EPWA", "EPBC"))
  )
  expect_s3_class(r, "data.frame")
})
