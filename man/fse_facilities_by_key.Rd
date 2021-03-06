% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fse_facilities_by_key.R
\name{fse_facilities_by_key}
\alias{fse_facilities_by_key}
\title{Facilities by read access key}
\usage{
fse_facilities_by_key(accesskey, ...)
}
\arguments{
\item{accesskey}{FSE read access key}

\item{...}{other arguments passed to \code{\link[=fse_api]{fse_api()}}}
}
\value{
Feed function returns a \code{data.frame} (default) or \code{xml_document} depending on
the value of \code{format} argument (see \code{fse_api} for details).

The object with the following columns/tags:

\itemize{
\item \code{Icao} -- Location ICAO code
\item \code{Location} -- Location name?
\item \code{Carrier} -- Owner/leasor name
\item \code{CommodityNames} -- Commodity names?
\item \code{GatesTotal} -- Number of passanger gates
\item \code{GatesRented} -- Number of passanger gates rented
\item \code{JobsPublic} -- ?
\item \code{Destinations} -- ?
\item \code{Fbo} -- ?
\item \code{Status} -- ?
}
}
\description{
List FBO facilities owned by read access key.
}
\seealso{
Other FSE feeds: 
\code{\link{fse_aircraft_aliases}()},
\code{\link{fse_aircraft_configs}()},
\code{\link{fse_aircraft_status_by_registration}()},
\code{\link{fse_aircraft}},
\code{\link{fse_assignments_by_key}()},
\code{\link{fse_commodities_by_key}()},
\code{\link{fse_fbo_summary}()},
\code{\link{fse_fbo}},
\code{\link{fse_group_members}()},
\code{\link{fse_jobs}},
\code{\link{fse_log}},
\code{\link{fse_payments}},
\code{\link{fse_statistics_by_key}()}
}
\concept{FSE feeds}
