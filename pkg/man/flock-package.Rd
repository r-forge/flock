\name{flock-package}
\alias{flock-package}
\alias{flock}
\docType{package}
\title{
Process synchronization using file locks.
}
\description{
Enables synchronization between R processes using a file
lock. Supports both exclusive (writer) and shared (readers)
locks.

An interface to the fcntl UNIX system call.

Windows is not supported.
}
\details{
\tabular{ll}{
Package: \tab flock\cr
Type: \tab Package\cr
Version: \tab 0.5\cr
Date: \tab 2014-11-04\cr
License: \tab Apache License 2.0\cr
}

}
\author{
Ivan Popivanov

Maintainer: Ivan Popivanov <ivan.popivanov@gmail.com>
}
\keyword{ package }
\examples{
file.lock = lock("~/file.lock")
# Critical section code goes here
unlock(file.lock)
}
