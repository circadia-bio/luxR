# Compute mean or median light exposure

Calculates a central-tendency summary of illuminance over a
`luxR_trace`, optionally restricted to a time window (e.g., a single day
or a wake-period subset).

## Usage

``` r
compute_mean_light(trace, window = NULL, stat = c("mean", "median"))
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)).

- window:

  Optional length-2 POSIXct vector giving `c(start, end)` to restrict
  the calculation to. Default `NULL` (use the whole trace).

- stat:

  Character scalar, one of `"mean"` (default) or `"median"`.

## Value

A numeric scalar (lux).
