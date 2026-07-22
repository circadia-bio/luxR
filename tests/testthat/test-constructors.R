test_that("light_trace validates equal-length inputs", {
  expect_error(
    light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200)),
    "length"
  )
})

test_that("light_trace constructs a luxR_trace object", {
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200, 300))
  expect_s3_class(tr, "luxR_trace")
})

test_that("light_trace defaults to device = 'generic'", {
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200, 300))
  expect_identical(tr$device, "generic")
})

test_that("print.luxR_trace reports device and span", {
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200, 300),
                     device = "axivity")
  expect_output(print(tr), "axivity")
})

test_that("validate_light_trace is not yet implemented", {
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200, 300))
  expect_error(validate_light_trace(tr), "Not yet implemented")
})
