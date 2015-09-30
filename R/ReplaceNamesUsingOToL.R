ReplaceNamesUsingOToL <- function(phy, verbose=TRUE) {
	names.start <- phy$tip.label
	names.end <- rep(NA, length(names.start))
	for (i in sequence(length(names.start))) {
		result <- NA
		try(result <- tnrs_match_names(names.start[i]))
		if(!is.na(result[1])) {
			names.end[i] <- result$unique_name[1]
		}
		if(i%%25==0 & verbose) {
			print(paste("done ", i/length(names.start)))
		}
	}
	phy$tip.label[which(!is.na(names.end))] <- names.end[which(!is.na(names.end))]
	phy <- drop.tip(phy, names.start[which(is.na(names.end))])
	return(phy)
}
