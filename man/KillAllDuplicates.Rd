\name{KillAllDuplicates}
\alias{KillAllDuplicates}
\title{
KillAllDuplicates
}
\description{
Remove duplicate taxa from the tree
}
\usage{
KillAllDuplicates(phy)
}
\arguments{
  \item{phy}{
a phylo object
}
}
\details{
This finds any duplicate taxa and deletes ALL of them 
(so if a taxon appears on a tree twice, both instances are removed).}
\value{
returns a pruned phylo object
}
\author{
Brian O'Meara
}

\examples{
phy <- read.tree(text="(((a,b),c),(d,(e,a)));")
sort(table(phy$tip.label), decreasing=TRUE)
phy.pruned <- KillAllDuplicates(phy)
sort(table(phy.pruned$tip.label), decreasing=TRUE)
}
\keyword{ pruning }
