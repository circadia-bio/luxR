## luxR 0.0.0.9000 (2026-07)

### Scaffold

* Initial package skeleton: `DESCRIPTION`, roxygen skeletons for all planned
  pipeline functions, and `testthat` stubs. No exported functionality is
  implemented yet -- all pipeline functions currently raise
  "Not yet implemented" and are tracked as open work.
* Planned functions: `compute_mean_light()`, `compute_tat()`,
  `compute_photic_history()`, `compute_melanopic_edi()`, `compute_lri()`,
  `compute_light_midpoint()`, `find_light_onset()`, `find_light_offset()`,
  `plot_light_actogram()`.
* `light_trace()` S3 constructor and `validate_light_trace()` stub
  implemented.
