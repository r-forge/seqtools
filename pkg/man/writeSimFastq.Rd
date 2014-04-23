\name{writeSimFastq}
\alias{writeSimFastq}
\title{writeSimFastq: Create fastq files with simulated k-mer sequences}
\description{
Writes compressed fastq files where sequence sections contain concatenated k-mers which are uniformly distributed in the range of k-mers for given k.}
\usage{
writeSimFastq(k=6,nk=5,nSeq=10,filename="sim.fq.gz")
}
\arguments{
  \item{k}{\code{numeric}. Length of k-mer. Default value is 6.}
  \item{nk}{\code{numeric}. Number of k-mers in each fastq read. Default value is 5.}
  \item{nSeq}{\code{numeric}. Number of simulated reads in fastq-file. Default value is 10.}
  \item{filename}{\code{character}. Name of written (compressed) fastq file.}
}
\details{The read headers are consequtive numbered. The phred quality values are equally set to 46 (='.') which represents a phred value of 13.}
\value{None.}
\author{Wolfgang Kaisers}
\examples{
writeSimFastq()
}
\keyword{writeSimFastq}