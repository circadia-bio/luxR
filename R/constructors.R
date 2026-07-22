#' Construct a light exposure trace object
#'
#' Low-level constructor for a single continuous ambient light exposure
#' trace, as recovered from a wrist-worn actigraphy device's light channel
#' (Axivity via `axR`/`zeitR::read_axivity()`, or ActTrust).
#'
#' @param time POSIXct vector of timestamps.
#' @param lux Numeric vector of illuminance values (lux), same length as
#'   `time`.
#' @param device Character scalar identifying the source device type.
#'   One of `"axivity"`, `"acttrust"`, or `"generic"` (default), the last
#'   for light data not tied to a specific device's calibration.
#'
#' @return An object of class `luxR_trace`.
#'
#' @export
light_trace <- function(time, lux, device = c("generic", "axivity", "acttrust")) {
  device <- match.arg(device)
  stopifnot(length(time) == length(lux))
  structure(
    list(time = time, lux = lux, device = device),
    class = "luxR_trace"
  )
}

#' Validate a light exposure trace
#'
#' Performs basic quality-control checks on a `luxR_trace` object: strictly
#' increasing timestamps, non-negative illuminance values, and a minimum
#' proportion of non-missing data.
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]).
#' @param max_na_prop Numeric in `[0, 1]`, maximum tolerated proportion of
#'   `NA` illuminance values before the trace is flagged invalid. Default
#'   `0.1`.
#'
#' @return A list with elements `valid` (logical) and `issues` (character
#'   vector describing any problems found; empty if `valid` is `TRUE`).
#'
#' @export
validate_light_trace <- function(trace, max_na_prop = 0.1) {
  stop("Not yet implemented.")
}

#' @export
print.luxR_trace <- function(x, ...) {
  cat("<luxR_trace>\n")
  cat(sprintf("  device : %s\n", x$device))
  cat(sprintf("  n      : %d\n", length(x$lux)))
  cat(sprintf("  span   : %s to %s\n",
              format(min(x$time)), format(max(x$time))))
  invisible(x)
}
