% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fse_payments.R
\name{fse_payments}
\alias{fse_payments}
\alias{fse_payments_from_id}
\alias{fse_payments_by_monthyear}
\title{Querying payment logs}
\usage{
fse_payments_from_id(fromid, accesskey, ...)

fse_payments_by_monthyear(month, year, accesskey, ...)
}
\arguments{
\item{fromid}{transaction ID}

\item{accesskey}{FSE read access key}

\item{...}{other arguments passed to \code{\link[=fse_api]{fse_api()}}}

\item{month, year}{month and year as integers}
}
\value{
Feed function returns a \code{data.frame} (default) or \code{xml_document} depending on
the value of \code{format} argument (see \code{fse_api} for details).
}
\description{
\itemize{
\item \code{\link[=fse_payments_from_id]{fse_payments_from_id()}} -- Query payments to/from account
associated with the provided access key with IDs greater than the ID
provided.
}

\itemize{
\item \code{\link[=fse_payments_by_monthyear]{fse_payments_by_monthyear()}} -- list of financial operations
of user with \code{accesskey} in specified \code{year} and \code{month}
}
}
\seealso{
Other FSE feeds: 
\code{\link{fse_aircraft_aliases}()},
\code{\link{fse_aircraft_configs}()},
\code{\link{fse_aircraft_status_by_registration}()},
\code{\link{fse_aircraft}},
\code{\link{fse_assignments_by_key}()},
\code{\link{fse_commodities_by_key}()},
\code{\link{fse_facilities_by_key}()},
\code{\link{fse_fbo_summary}()},
\code{\link{fse_fbo}},
\code{\link{fse_group_members}()},
\code{\link{fse_jobs}},
\code{\link{fse_log}},
\code{\link{fse_statistics_by_key}()}
}
\concept{FSE feeds}
