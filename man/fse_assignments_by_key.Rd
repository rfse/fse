% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fse_assignments_by_key.R
\name{fse_assignments_by_key}
\alias{fse_assignments_by_key}
\title{Assignments by read access key}
\usage{
fse_assignments_by_key(accesskey, ...)
}
\arguments{
\item{accesskey}{FSE read access key}

\item{...}{other arguments passed to \code{\link[=fse_api]{fse_api()}}}
}
\value{
Feed function returns a \code{data.frame} (default) or \code{xml_document} depending on
the value of \code{format} argument (see \code{fse_api} for details).

The object contains the following columns/tags:

\itemize{
\item \code{Id} -- Assignment Id
\item \code{Status} -- Assignment status one of "Selected", "Departing" or "Enroute"
\item \code{Location} -- ICAO where the job is at
\item \code{From} -- Originating airport
\item \code{Destination} -- Destination airport
\item \code{Assignment} -- Description of payload
\item \code{Amount} -- Number of pax or kg
\item \code{Units} -- The unit of \code{Amount}
\item \code{Pay} -- Assignment pay in vdollars
\item \code{PilotFee} -- Pilot fee (for group assignments?)
\item \code{Expires} -- Amount of time in which the assignment will expire
\item \code{ExpireDateTime} -- Date and time at which the assignment will expire
\item \code{Type} -- Type of assignment: "Trip-Only", "All-In"...
\item \code{Express} -- Is it an express assignment
\item \code{Locked} -- Name of the pilot that has the assignment selected
\item \code{Comment} -- Additional comments
}
}
\description{
List "My flight" assignments for the provided read access key.
}
\seealso{
Other FSE feeds: 
\code{\link{fse_aircraft_aliases}()},
\code{\link{fse_aircraft_configs}()},
\code{\link{fse_aircraft_status_by_registration}()},
\code{\link{fse_aircraft}},
\code{\link{fse_commodities_by_key}()},
\code{\link{fse_facilities_by_key}()},
\code{\link{fse_fbo_summary}()},
\code{\link{fse_fbo}},
\code{\link{fse_group_members}()},
\code{\link{fse_jobs}},
\code{\link{fse_log}},
\code{\link{fse_payments}},
\code{\link{fse_statistics_by_key}()}
}
\concept{FSE feeds}
