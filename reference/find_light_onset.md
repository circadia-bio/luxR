# Find daily light onset

Locates the first sustained crossing above a light threshold within a
day, requiring the threshold to be exceeded for a minimum duration to
avoid triggering on brief artefactual spikes.

## Usage

``` r
find_light_onset(trace, threshold = 1000, min_duration_minutes = 5)
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)),
  typically spanning a single day.

- threshold:

  Numeric scalar, illuminance threshold in lux. Default `1000`.

- min_duration_minutes:

  Numeric scalar, minimum sustained duration above threshold required,
  in minutes. Default `5`.

## Value

A POSIXct scalar giving the onset time, or `NA` if no qualifying onset
is found.
