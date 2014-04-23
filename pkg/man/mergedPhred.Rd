\name{mergedPhred}
%
\alias{mergedPhred}
\alias{mergedPhred-methods}
\alias{mergedPhred,Fastqq-method}
%
\alias{mergedPhredQuantiles}
\alias{mergedPhredQuantiles-methods}
\alias{mergedPhredQuantiles,Fastqq-method}
%
\alias{plotMergedPhredQuant}
\alias{plotMergedPhredQuant-methods}
\alias{plotMergedPhredQuant,Fastqq-method}
%
\title{
mergedPhred functions: Retrieving and plotting of phred quantities from whole \code{Fastqq} objects.
}
\description{
Retrieve position-wise tabulated mergedPhred values. Get position wise mergedPhred quantiles and plot mergedPhred quantile values}
\usage{
mergedPhred(object)
mergedPhredQuantiles(object, quantiles)
plotMergedPhredQuant(object, main, ...)
}
\arguments{
  \item{object}{\code{Fastqq}: Object which contains collected values from \code{nFiles} fastq files.}
  \item{quantiles}{\code{numeric}: Vector of quantiles. All values must be in [0,1].}
  \item{main}{\code{character}: String wich is used as figure caption. Passed internally to plot function.}
  \item{...}{Optional arguments which are passed to the \code{plot} function in \code{plotMergedPhredQuant}.}
}
\details{The function adds the phred values from all contained fastq data.}
\value{\code{mergedPhred} returns a \code{matrix} with 94 rows and (maxSeqLen+1) columns. \code{mergedPhredQuantiles} returns a \code{data.frame} with one row for each given quantile and max(seqLen(.)) columns. \code{plotMergedPhredQuant} returns nothing.}
\references{
Cock PJA, Fields CJ, Goto N, Heuer ML, Rice PM
The sanger fastq file format for sequences with quality scores and the Solexa/Illumina fastq variants.
Nucleic Acids Research 2010 Vol.38 No.6 1767-1771
}
\author{
Wolfgang Kaisers
}
\note{The static size of the retured k-mer array is 4^k.}
\examples{
basedir<-system.file("extdata",package="seqTools")
setwd(basedir)
fq<-fastqq(c("g4_l101_n100.fq.gz","g5_l101_n100.fq.gz"),k=4,probeLabel=c("g4","g5"))
#
ph<-mergedPhred(fq)
ph[25:35,1:15]
pq<-mergedPhredQuantiles(fq,c(0.25,0.5,0.75))
plotMergedPhredQuant(fq)
#
}
\keyword{fastqKmerSubsetLocs}
\keyword{kmer}