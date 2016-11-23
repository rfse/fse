library(ff)
library(dplyr)

# calculate expected size of pairs set
# @params d data frame
#
# @return numeric
expected_size <- function(d) {
  n <- nrow(d)
  n * (n - 2) / 2
}

# create ff data representation
distance_db <- function(d) {

}



.toFF <- function(res, withProgressBar, expectedSize)
{
  n <- 20000
  slice <- fetch(res, n)
  if(nrow(slice)==0) stop("No pairs generated. Check blocking criteria.")
  # expected size can be 0 when there is really 1 record pair, make
  # sure txtProgressBar gets a legal value
  if (withProgressBar) pgb <- txtProgressBar(0, max(expectedSize, nrow(slice)))
  # Spalten, die nur NA enthalten, werden als character ausgegeben, deshalb
  # Umwandlung nicht-numerischer Spalten in numeric
  for (i in 1:ncol(slice))
  {
    if (!is.numeric(slice[,i]))
      slice[,i] <- as.numeric(slice[,i])
  }

  pairsff <- do.call(ffdf, lapply(slice, ff))
  while(nrow(slice <- fetch(res, n)) > 0)
  {
    currentLength <- nrow(pairsff)
    newLength <- currentLength + nrow(slice)
    nrow(pairsff) <- newLength
    pairsff[(currentLength + 1):newLength,] <- slice
    if (withProgressBar) setTxtProgressBar(pgb, newLength)
  }
  if (withProgressBar) close(pgb)
  pairsff
}



#  ------------------------------------------------------------------------


icao <- fse_icao_data()

sp <- icao %>%
  select(lon, lat) %>%
  head(n=50) %>%
  data.matrix() %>%
  SpatialPoints( proj4string=CRS("+proj=longlat"))

r <- spdep::dnearneigh(sp, 0, 700)

plot(r, coordinates(sp))

is0 <- sapply(r, identical, 0L)
elist <- do.call(
  "rbind",
  lapply( seq(along=r)[!is0],
          function(i) {
            x <- r[[i]]
            len <- length(x)
            cbind(
              rep(i, len),
              x
            )
          } )
)

g <- igraph::graph_from_edgelist(unique(elist), directed = FALSE) %>%
  simplify()
plot(g)

distances()
