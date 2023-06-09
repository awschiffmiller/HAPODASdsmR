% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hbwDSMdata2km.R
\docType{data}
\name{hbw_hr_cds.05}
\alias{hbw_hr_cds.05}
\title{HBW ddf.obj: an CDS detection function for humpback whales with:
 hazard rate key function
 the most distant 5% of sighings truncated}
\format{
An object of class \code{dsmodel} of length 3.
}
\usage{
hbw_hr_cds.05
}
\description{
hist(hbw_Dist$distance, breaks= 15)
hbw_hr_cds.05<-Distance::ds(hbw_Dist, truncation="5%", key='hr',
                                       adjustment=NULL, formula= ~1)
summary(hbw_hr_cds.05)
plot(hbw_hr_cds.05, main= "Humpback whale: CDS Hazard Rate")
}
\keyword{datasets}
