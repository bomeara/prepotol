CompletelyProcess <- function(phy, verbose=TRUE, autoroot=TRUE, monophy=TRUE) {
	phy <- KillAllDuplicates(phy)
	if(verbose) {
		print("Finished first round of elimintating duplicate taxa, now doing TNRS")
	}
	phy <- ReplaceNamesUsingOToL(phy, verbose=verbose)
	if(verbose) {
		print("Finished TNRS, now doing last round of eliminating duplicate taxa")
	}
	phy <- KillAllDuplicates(phy)
	if(monophy) {
		phy <- PruneWithMonophy(phy)
	}
	if(autoroot & !is.rooted(phy)) {
		phy$root.edge <- 0
	}
	return(phy)
}
