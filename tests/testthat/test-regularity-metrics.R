test_that("compute_lri is not yet implemented", {
  # TODO: hand-verify against a synthetic multi-day set of traces with a
  # known regularity pattern (fully regular vs fully irregular controls).
  tr1 <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 2000, 3000))
  tr2 <- light_trace(time = Sys.time() + 86400 + 0:2 * 60, lux = c(100, 2000, 3000))
  expect_error(compute_lri(list(tr1, tr2)), "Not yet implemented")
})

test_that("compute_light_midpoint is not yet implemented", {
  # TODO: hand-verify circular-mean clock time against a manual calculation
  # for a synthetic single-day trace.
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 2000, 3000))
  expect_error(compute_light_midpoint(tr), "Not yet implemented")
})
