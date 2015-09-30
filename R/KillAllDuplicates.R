KillAllDuplicates <- function(phy) {
	taxon.counts <- sort(table(phy$tip.label))
	if(length(which(taxon.counts>1))>0) {
		taxa.to.kill <- names(taxon.counts[which(taxon.counts>1)])
		phy <- drop.tip(phy, taxa.to.kill)
	}
	return(phy)
}
