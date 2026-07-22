#' Find daily light onset
#'
#' Locates the first sustained crossing above a light threshold within a
#' day, requiring the threshold to be exceeded for a minimum duration to
#' avoid triggering on brief artefactual spikes.
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]),
#'   typically spanning a single day.
#' @param threshold Numeric scalar, illuminance threshold in lux. Default
#'   `1000`.
#' @param min_duration_minutes Numeric scalar, minimum sustained duration
#'   above threshold required, in minutes. Default `5`.
#'
#' @return A POSIXct scalar giving the onset time, or `NA` if no qualifying
#'   onset is found.
#'
#' @export
find_light_onset <- function(trace, threshold = 1000, min_duration_minutes = 5) {
  stop("Not yet implemented.")
}

#' Find daily light offset
#'
#' Locates the last sustained crossing below a light threshold within a
#' day, mirroring [find_light_onset()].
#'
#' @param trace An object of class `luxR_trace` (see [light_trace()]),
#'   typically spanning a single day.
#' @param threshold Numeric scalar, illuminance threshold in lux. Default
#'   `1000`.
#' @param min_duration_minutes Numeric scalar, minimum sustained duration
#'   below threshold required, in minutes. Default `5`.
#'
#' @return A POSIXct scalar giving the offset time, or `NA` if no qualifying
#'   offset is found.
#'
#' @export
find_light_offset <- function(trace, threshold = 1000, min_duration_minutes = 5) {
  stop("Not yet implemented.")
}
