test_that("find_light_onset is not yet implemented", {
  # TODO: hand-verify onset detection against a synthetic day trace with a
  # known sustained crossing, including a brief sub-threshold-duration spike
  # that should NOT trigger onset.
  tr <- light_trace(time = Sys.time() + 0:5 * 60, lux = c(50, 50, 2000, 2000, 2000, 50))
  expect_error(find_light_onset(tr, threshold = 1000), "Not yet implemented")
})

test_that("find_light_offset is not yet implemented", {
  # TODO: hand-verify offset detection mirrors find_light_onset() logic.
  tr <- light_trace(time = Sys.time() + 0:5 * 60, lux = c(50, 50, 2000, 2000, 2000, 50))
  expect_error(find_light_offset(tr, threshold = 1000), "Not yet implemented")
})
