context("Retrieving access keys")

# Testing environment variables
e <- c(
  FSE_SERVICE_KEY = "servicekey",
  FSE_PERSONAL_KEY = "personalkey"
)

# As fse_key objects
k <- list(
  sk = as_fse_key(e["FSE_SERVICE_KEY"], type="service"),
  pk = as_fse_key(e["FSE_PERSONAL_KEY"], type="personal")
)





test_that("fse_ak on 'auto' fetches appropriate key when available", {
  # All available, then SK
  withr::with_envvar(
    e,
    expect_equivalent(
      fse_ak(),
      k$sk
    )
  )

  # Only PK available, then PK
  withr::with_envvar(
    replace(e, 1, as.character(NA)),
    expect_equivalent(
      fse_ak(),
      k$pk
      )
  )

  # None availble, then error
  withr::with_envvar(
    replace(e, 1:2, as.character(NA)),
    expect_error(fse_ak())
  )
})




test_that("proper key is fetched based on option", {
  # Personal
  withr::with_envvar(
    e,
    withr::with_options(
      list(fse.key_type = "personal"),
      expect_equivalent(
        fse_ak(),
        k$pk
      )
    )
  )

  # Service
  withr::with_envvar(
    e,
    withr::with_options(
      list(fse.key_type = "service"),
      expect_equivalent(
        fse_ak(),
        k$sk
      )
    )
  )

})
