# Find daily light offset

Locates the last sustained crossing below a light threshold within a
day, mirroring
[`find_light_onset()`](https://luxr.circadia-lab.uk/reference/find_light_onset.md).

## Usage

``` r
find_light_offset(trace, threshold = 1000, min_duration_minutes = 5)
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)),
  typically spanning a single day.

- threshold:

  Numeric scalar, illuminance threshold in lux. Default `1000`.

- min_duration_minutes:

  Numeric scalar, minimum sustained duration below threshold required,
  in minutes. Default `5`.

## Value

A POSIXct scalar giving the offset time, or `NA` if no qualifying offset
is found.
