% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/segmentize.R
\name{segmentize}
\alias{segmentize}
\title{Start and end points of all segments}
\usage{
segmentize(data)
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

orriginal: Logical class, designates row as an orriginal datapoint "True" or interpolated point "FALSE"

cum_dist: numeric class, from `cumsum_by_group`, cumulative distance in meteres for each unique label/onoff/section combination

mod: numeric class, the modulus of cum_dist by seg.length

cutpoint: Character class: identifies "Start", "End", and "Mid" points of each segment. Points inside a segment are designated "0"

segnum: interger class, Unique ID number for each segment}
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

segnum: interger class, Unique ID number for each segment
}
\description{
Returns the start and end of each segment, as well as the orriginal datapoints. Cuts out all interpolated points that are not start or end points.
}
\author{
Abigail Schiffmiller
}
