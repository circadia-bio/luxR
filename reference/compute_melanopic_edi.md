# Approximate melanopic equivalent daylight illuminance (melanopic EDI)

Converts photopic illuminance (lux) to an approximate melanopic EDI
value using a fixed calibration factor. Actigraphy devices' broadband
light sensors do not measure spectral composition directly, so this is
an approximation only and should not be treated as a substitute for
spectroradiometric measurement.

## Usage

``` r
compute_melanopic_edi(trace, calibration_factor = NULL)
```

## Arguments

- trace:

  An object of class `luxR_trace` (see
  [`light_trace()`](https://luxr.circadia-lab.uk/reference/light_trace.md)).

- calibration_factor:

  Numeric scalar, photopic-lux-to-melanopic-EDI conversion factor.
  Default `NULL`, in which case a device-specific default is looked up
  from `trace$device` (not yet implemented).

## Value

A numeric vector, same length as `trace$lux`, giving approximate
melanopic EDI values.
