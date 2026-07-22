test_that("compute_mean_light is not yet implemented", {
  # TODO: hand-verify mean/median lux over a synthetic trace, with and
  # without a restricting `window`.
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200, 300))
  expect_error(compute_mean_light(tr), "Not yet implemented")
})

test_that("compute_tat is not yet implemented", {
  # TODO: hand-verify minutes above threshold for a synthetic trace with a
  # known number of epochs above/below cutoff.
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 2000, 3000))
  expect_error(compute_tat(tr, threshold = 1000), "Not yet implemented")
})

test_that("compute_photic_history is not yet implemented", {
  # TODO: hand-verify exponentially-weighted cumulative history against a
  # manual calculation for a short synthetic trace.
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200, 300))
  expect_error(compute_photic_history(tr, tau = 1), "Not yet implemented")
})

test_that("compute_melanopic_edi is not yet implemented", {
  # TODO: once a calibration factor / reference is confirmed with Lucas,
  # hand-verify converted values for a synthetic trace.
  tr <- light_trace(time = Sys.time() + 0:2 * 60, lux = c(100, 200, 300))
  expect_error(compute_melanopic_edi(tr), "Not yet implemented")
})
