# Compute mean light timing (MLiT)

Calculates the light-exposure-weighted circular mean clock time of
illuminance above a threshold, analogous to mean sleep timing metrics.

## Usage

``` r
compute_light_midpoint(trace, threshold = 1000)
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)).

- threshold:

  Numeric scalar, illuminance threshold in lux above which exposure
  counts toward the timing calculation. Default `1000`.

## Value

A numeric scalar, clock time in decimal hours (`0`-`24`).
