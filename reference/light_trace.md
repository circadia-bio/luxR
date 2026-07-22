# Construct a light exposure trace object

Low-level constructor for a single continuous ambient light exposure
trace, as recovered from a wrist-worn actigraphy device's light channel
(Axivity via `axR`/`zeitR::read_axivity()`, or ActTrust).

## Usage

``` r
light_trace(time, lux, device = c("generic", "axivity", "acttrust"))
```

## Arguments

- time:

  POSIXct vector of timestamps.

- lux:

  Numeric vector of illuminance values (lux), same length as `time`.

- device:

  Character scalar identifying the source device type. One of
  `"axivity"`, `"acttrust"`, or `"generic"` (default), the last for
  light data not tied to a specific device's calibration.

## Value

An object of class `luxR_trace`.
