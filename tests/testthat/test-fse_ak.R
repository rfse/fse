
context("Testing fetching access key")

e <- c(
  FSE_USE_SERVICE="0",
  FSE_SERVICE_KEY = "servicekey",
  FSE_PERSONAL_KEY = "personalkey"
)

test_that("fse_ak fetches properly based on environment variable", {
  withr::with_envvar(
    replace(e, 1, "0"),
    expect_equivalent( fse_ak(), e["FSE_PERSONAL_KEY"] )
  )

  withr::with_envvar(
    replace(e, 1, "1"),
    expect_equivalent( fse_ak(), e["FSE_SERVICE_KEY"] )
  )
})




test_that("fse_ak fetches properly based on R option", {
  withr::with_envvar(
    e,
    withr::with_options(
      list(fse.use_service = 0),
      expect_equivalent( fse_ak(), e["FSE_PERSONAL_KEY"] )
    )
  )

  withr::with_envvar(
    e,
    withr::with_options(
      list(fse.use_service = 1),
      expect_equivalent( fse_ak(), e["FSE_SERVICE_KEY"] )
    )
  )

})
