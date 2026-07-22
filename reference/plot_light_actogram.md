# Plot a light exposure actogram

Produces a double-plotted actogram-style figure of ambient light
exposure across consecutive days, for visual inspection/QC of light
onset/offset detection and overall photic exposure pattern.

## Usage

``` r
plot_light_actogram(traces)
```

## Arguments

- traces:

  A list of `luxR_trace` objects to plot, typically spanning consecutive
  days for one participant.

## Value

A `ggplot` object.
