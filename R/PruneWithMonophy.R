PruneWithMonophy <- function(phy,  taxonomy = NULL, verbosity = 5, outliercheck=TRUE, outlierlevel=0.5,
taxizelevel= NULL, taxizedb='both', taxizepref='ncbi') {
	monophy.results <- AssessMonophyly(phy, taxonomy=taxonomy, verbosity=verbosity, outliercheck=outliercheck, outlierlevel=outlierlevel, taxizelevel=taxizelevel, taxizedb=taxizedb, taxizepref=taxizepref)
	bad.taxa <- c(GetIntruderTips(monophy.results), GetOutlierTips(monophy.results))
	if(length(bad.taxa)>0) {
		phy <- drop.tip(phy, bad.taxa)
	}
	return(phy)
}
