\name{ReplaceNamesUsingOToL}
\alias{ReplaceNamesUsingOToL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ReplaceNamesUsingOToL(phy, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{
%%     ~~Describe \code{phy} here~~
}
  \item{verbose}{
%%     ~~Describe \code{verbose} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (phy, verbose = TRUE) 
{
    names.start <- phy$tip.label
    names.end <- rep(NA, length(names.start))
    for (i in sequence(length(names.start))) {
        result <- NA
        try(result <- tnrs_match_names(names.start[i]))
        if (!is.na(result[1])) {
            names.end[i] <- result$unique_name[1]
        }
        if (i\%\%25 == 0 & verbose) {
            print(paste("done ", i/length(names.start)))
        }
    }
    phy$tip.label[which(!is.na(names.end))] <- names.end[which(!is.na(names.end))]
    phy <- drop.tip(phy, names.start[which(is.na(names.end))])
    return(phy)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
