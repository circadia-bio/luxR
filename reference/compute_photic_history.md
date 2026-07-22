# Compute cumulative photic history

Calculates an exponentially-weighted cumulative light exposure history
up to each timepoint in the trace, for use as an input to circadian
phase-response models where recent light exposure carries more weight
than more distant exposure.

## Usage

``` r
compute_photic_history(trace, tau = 1)
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)).

- tau:

  Numeric scalar, decay time constant in hours. Default `1`.

## Value

A numeric vector, same length as `trace$lux`, giving the cumulative
photic history at each timepoint.
