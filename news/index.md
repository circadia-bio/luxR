# Changelog

## luxR 0.0.0.9000 (2026-07)

### Scaffold

- Initial package skeleton: `DESCRIPTION`, roxygen skeletons for all
  planned pipeline functions, and `testthat` stubs. No exported
  functionality is implemented yet – all pipeline functions currently
  raise “Not yet implemented” and are tracked as open work.
- Planned functions:
  [`compute_mean_light()`](https://luxr.circadia-lab.uk/reference/compute_mean_light.md),
  [`compute_tat()`](https://luxr.circadia-lab.uk/reference/compute_tat.md),
  [`compute_photic_history()`](https://luxr.circadia-lab.uk/reference/compute_photic_history.md),
  [`compute_melanopic_edi()`](https://luxr.circadia-lab.uk/reference/compute_melanopic_edi.md),
  [`compute_lri()`](https://luxr.circadia-lab.uk/reference/compute_lri.md),
  [`compute_light_midpoint()`](https://luxr.circadia-lab.uk/reference/compute_light_midpoint.md),
  [`find_light_onset()`](https://luxr.circadia-lab.uk/reference/find_light_onset.md),
  [`find_light_offset()`](https://luxr.circadia-lab.uk/reference/find_light_offset.md),
  [`plot_light_actogram()`](https://luxr.circadia-lab.uk/reference/plot_light_actogram.md).
- [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)
  S3 constructor and
  [`validate_light_trace()`](https://luxr.circadia-lab.uk/reference/validate_light_trace.md)
  stub implemented.
