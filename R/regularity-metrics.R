#' Compute the Light Regularity Index (LRI)
#'
#' Calculates a day-to-day regularity index for light exposure, analogous
#' to the Sleep Regularity Index (cf. `zeitR::compute_sri()`): the
#' probability that a participant is in the same light-exposure state
#' (above/below threshold) at the same clock time on consecutive days,
#' averaged across all comparable epochs.
#'
#' @param traces A list of `luxR_trace` objects for a single participant,
#'   one per day, sharing a common epoch length.
#' @param threshold Numeric scalar, illuminance threshold in lux separating
#'   "light" and "dark" states. Default `1000`.
#' @param epoch_minutes Numeric scalar, epoch length in minutes for
#'   comparison across days. Default `1`.
#'
#' @return A numeric scalar between `-100` and `100`, in the same units as
#'   `zeitR::compute_sri()`.
#'
#' @export
compute_lri <- function(traces, threshold = 1000, epoch_minutes = 1) {
  stop("Not yet implemented.")
}

#' Compute mean light timing (MLiT)
#'
#' Calculates the light-exposure-weighted circular mean clock time of
#' illuminance above a threshold, analogous to mean sleep timing metrics.
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]).
#' @param threshold Numeric scalar, illuminance threshold in lux above which
#'   exposure counts toward the timing calculation. Default `1000`.
#'
#' @return A numeric scalar, clock time in decimal hours (`0`-`24`).
#'
#' @export
compute_light_midpoint <- function(trace, threshold = 1000) {
  stop("Not yet implemented.")
}
