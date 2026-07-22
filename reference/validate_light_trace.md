# Validate a light exposure trace

Performs basic quality-control checks on a `luxR_trace` object: strictly
increasing timestamps, non-negative illuminance values, and a minimum
proportion of non-missing data.

## Usage

``` r
validate_light_trace(trace, max_na_prop = 0.1)
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)).

- max_na_prop:

  Numeric in `[0, 1]`, maximum tolerated proportion of `NA` illuminance
  values before the trace is flagged invalid. Default `0.1`.

## Value

A list with elements `valid` (logical) and `issues` (character vector
describing any problems found; empty if `valid` is `TRUE`).
