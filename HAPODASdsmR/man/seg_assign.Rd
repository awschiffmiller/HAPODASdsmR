% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seg_assign.R
\name{seg_assign}
\alias{seg_assign}
\title{Define segment start and end points using modulus of cum_dist}
\usage{
seg_assign(data, seg.length)
}
\arguments{
\item{data}{a dataframe with specified columns:

datetime: POSIXct class, date and time of datapoint. One row for every second

lats: numeric class, decimal latitude of datapoint. Interpolated for every second between orriginal datapoints.

longs: numeric class, decimal longitude of datapoint. Interpolated for every second between orriginal datapoints.

label: character or factor class, unique line label for transect

X onoff: character or factor class, on or off effort designation for line

section: character or factor class, section of line

travel: numeric class, distance traveled since LAST data point IN METERS

orriginal: Logical class, designates row as an orriginal datapoint

cum_dist: numeric class, from `cumsum_by_group`, cumulative distance in meteres for each unique label/onoff/section combination}

\item{seg.length}{Length IN METERS for each segment to be cut to.}
}
\value{
a dataframe with specified columns:

datetime: POSIXct class, date and time of datapoint. One row for every second

lats: numeric class, decimal latitude of datapoint. Interpolated for every second between orriginal datapoints.

longs: numeric class, decimal longitude of datapoint. Interpolated for every second between orriginal datapoints.

label: character or factor class, unique line label for transect

X onoff: character or factor class, on or off effort designation for line

section: character or factor class, section of line

travel: numeric class, distance traveled since LAST data point IN METERS

orriginal: Logical class, designates row as an orriginal datapoint "True" or interpolated point "FALSE"

cum_dist: numeric class, from `cumsum_by_group`, cumulative distance in meteres for each unique label/onoff/section combination

mod: numeric class, the modulus of cum_dist by seg.length

cutpoint: Character class: identifies "Start" and "End" points of each segment. Points inside a segment are designated "0"
}
\description{
Runs cumsum on x seperately for each unique combination of the grouping variables
}
\author{
Abigail Schiffmiller
}
