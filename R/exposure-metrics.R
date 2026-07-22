#' Compute mean or median light exposure
#'
#' Calculates a central-tendency summary of illuminance over a `luxR_trace`,
#' optionally restricted to a time window (e.g., a single day or a
#' wake-period subset).
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]).
#' @param window Optional length-2 POSIXct vector giving `c(start, end)` to
#'   restrict the calculation to. Default `NULL` (use the whole trace).
#' @param stat Character scalar, one of `"mean"` (default) or `"median"`.
#'
#' @return A numeric scalar (lux).
#'
#' @export
compute_mean_light <- function(trace, window = NULL, stat = c("mean", "median")) {
  stop("Not yet implemented.")
}

#' Compute Time Above Threshold (TAT) for light exposure
#'
#' Calculates the total duration for which illuminance exceeds a given
#' threshold, expressed in minutes.
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]).
#' @param threshold Numeric scalar, illuminance threshold in lux. Default
#'   `1000`, a common cutoff for outdoor/bright light exposure.
#' @param window Optional length-2 POSIXct vector giving `c(start, end)` to
#'   restrict the calculation to. Default `NULL` (use the whole trace).
#'
#' @return A numeric scalar, minutes above threshold.
#'
#' @export
compute_tat <- function(trace, threshold = 1000, window = NULL) {
  stop("Not yet implemented.")
}

#' Compute cumulative photic history
#'
#' Calculates an exponentially-weighted cumulative light exposure history
#' up to each timepoint in the trace, for use as an input to circadian
#' phase-response models where recent light exposure carries more weight
#' than more distant exposure.
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]).
#' @param tau Numeric scalar, decay time constant in hours. Default `1`.
#'
#' @return A numeric vector, same length as `trace$lux`, giving the
#'   cumulative photic history at each timepoint.
#'
#' @export
compute_photic_history <- function(trace, tau = 1) {
  stop("Not yet implemented.")
}

#' Approximate melanopic equivalent daylight illuminance (melanopic EDI)
#'
#' Converts photopic illuminance (lux) to an approximate melanopic EDI value
#' using a fixed calibration factor. Actigraphy devices' broadband light
#' sensors do not measure spectral composition directly, so this is an
#' approximation only and should not be treated as a substitute for
#' spectroradiometric measurement.
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]).
#' @param calibration_factor Numeric scalar, photopic-lux-to-melanopic-EDI
#'   conversion factor. Default `NULL`, in which case a device-specific
#'   default is looked up from `trace$device` (not yet implemented).
#'
#' @return A numeric vector, same length as `trace$lux`, giving approximate
#'   melanopic EDI values.
#'
#' @export
compute_melanopic_edi <- function(trace, calibration_factor = NULL) {
  stop("Not yet implemented.")
}
