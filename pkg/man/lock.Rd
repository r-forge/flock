\name{lock}
\alias{lock}
\title{
Locking/Unlocking
}
\description{
Locks a file in exclusive or shared mode.
}
\usage{
lock(path, exclusive = TRUE)
}
\arguments{
  \item{path}{
      Character. The path.
}
  \item{exclusive}{
      Logical. The lock type, exclusive or shared.
}
}
\details{
The file is created if it doesn't exist.
}
\value{
Returns an object of type \code{FileLock}, which is to be
used for the \code{unlock} call.
}
\author{
Ivan Popivanov
}
\note{
}

\examples{
require(DBI)
require(flock)
require(RSQLite)
require(parallel)

dbpath <- tempfile()
con <- dbConnect(RSQLite::SQLite(), dbname=dbpath)
df <- data.frame(value = 0)
dbWriteTable(con, "test", df)
dbDisconnect(con)

write.one.value <- function(val, lock.name=NULL) {
   if(!is.null(lock.name)) {
      file.lock = lock(lock.name)
   }
   
   # The three lines below are the "critical section"
   con <- dbConnect(RSQLite::SQLite(), dbname = dbpath)
   dbWriteTable(con, "test", data.frame(value = val), append = TRUE)
   dbDisconnect(con)
   
   if(!is.null(lock.name)) {
      unlock(file.lock)
   }
}

lock.name = tempfile()

# Run the parallel database updates with two cores
mclapply(1:100, write.one.value, mc.cores=2, lock.name=lock.name)

# To see the failing scenario, run (on a multi-core system):
# mclapply(1:100, write.one.value, mc.cores=2)
}
\keyword{ lock }
\keyword{ unlock }
