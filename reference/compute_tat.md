# Compute Time Above Threshold (TAT) for light exposure

Calculates the total duration for which illuminance exceeds a given
threshold, expressed in minutes.

## Usage

``` r
compute_tat(trace, threshold = 1000, window = NULL)
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)).

- threshold:

  Numeric scalar, illuminance threshold in lux. Default `1000`, a common
  cutoff for outdoor/bright light exposure.

- window:

  Optional length-2 POSIXct vector giving `c(start, end)` to restrict
  the calculation to. Default `NULL` (use the whole trace).

## Value

A numeric scalar, minutes above threshold.
