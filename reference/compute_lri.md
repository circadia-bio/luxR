# Compute the Light Regularity Index (LRI)

Calculates a day-to-day regularity index for light exposure, analogous
to the Sleep Regularity Index (cf. `zeitR::compute_sri()`): the
probability that a participant is in the same light-exposure state
(above/below threshold) at the same clock time on consecutive days,
averaged across all comparable epochs.

## Usage

``` r
compute_lri(traces, threshold = 1000, epoch_minutes = 1)
```

## Arguments

- traces:

  A list of `luxR_trace` objects for a single participant, one per day,
  sharing a common epoch length.

- threshold:

  Numeric scalar, illuminance threshold in lux separating "light" and
  "dark" states. Default `1000`.

- epoch_minutes:

  Numeric scalar, epoch length in minutes for comparison across days.
  Default `1`.

## Value

A numeric scalar between `-100` and `100`, in the same units as
`zeitR::compute_sri()`.
