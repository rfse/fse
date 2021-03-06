% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fse_aircraft_aliases.R
\name{fse_aircraft_aliases}
\alias{fse_aircraft_aliases}
\title{Aircraft Aliases}
\usage{
fse_aircraft_aliases(...)
}
\arguments{
\item{...}{other arguments passed to \code{\link[=fse_api]{fse_api()}}}
}
\value{
Feed function returns a \code{data.frame} (default) or \code{xml_document} depending on
the value of \code{format} argument (see \code{fse_api} for details).

Returned object has the following columns/tags:

\itemize{
\item \code{MakeModel} -- Aircraft model name
\item \code{Alias} -- Alias
}
}
\description{
Aliases of FSE aircraft.
}
\examples{
\dontrun{
r <- fse_aircraft_aliases()
}
}
\seealso{
Other FSE feeds: 
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
\code{\link{fse_payments}},
\code{\link{fse_statistics_by_key}()}
}
\concept{FSE feeds}
