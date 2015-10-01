\name{CompletelyProcess}
\alias{CompletelyProcess}
\alias{prepotol}
\title{
CompletelyProcess
}
\description{
Do all the processing required to ready a tree for deposition in OpenTree
}
\usage{
KillAllDuplicates(phy, verbose=TRUE, autoroot=TRUE, monophy=TRUE)
}
\arguments{
  \item{phy}{
a phylo object
}
\item{verbose} {
If TRUE, outputs the status for the slowest step, TNRS with OpenTree
}
\item{autoroot} {
If TRUE, sticks a root on the implied root of the tree
}
\item{monophy} {
If TRUE, uses MonoPhy and taxize to download a taxonomy and prune off taxa that disagree with the taxonomy
}
}
\details{
This will remove duplicate taxa (using ape), convert taxon names to those used by OpenTree using its TNRS service and rotl,
and then delete taxa that are duplicates after this process. If verbose=TRUE, gives progress reports every
25 taxa. If autoroot=TRUE, it'll add a root if needed to the tree. If monophy=TRUE, it will download an
NCBI taxonomy for the tree using taxize and find taxa that are "invaders" or "outliers" and delete them.
The thinking is that those taxa may have been poorly TNRSed.
}
\value{
returns a pruned phylo object
}
\author{
Brian O'Meara
}

\examples{
}
\keyword{ pruning }
