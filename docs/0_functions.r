
# parameters for beast
extra = list()
extra$dumpInputData = TRUE # Not totally sure what this does tbh
extra$numThreadsPerCPU = 2 # Each cpu core will be assigned 2 threads
extra$numParThreads = 0 # If 0, full send. If >0, used to specify the total number of threads
extra$tallyPosNegTrendJump <- TRUE # We want to count whether a change is positive or negative
extra$computeCredible = FALSE # No CI
extra$computeSeasonOrder = FALSE # Supplying order
extra$computeTrendOrder = FALSE # Supplying order
extra$computeSeasonChngpt = FALSE # No changepoint
extra$computeTrendChngpt = TRUE # No changepoint
extra$computeSeasonAmp = TRUE # Calculate seasonal amplitude
extra$computeTrendSlope = TRUE # Calculate slope
extra$printOptions <- FALSE # Be quiet
extra$printProgressBar <- FALSE # Be quieter

metadata = list()
metadata$isRegularOrdered = FALSE # The image stack is irregular
metadata$whichDimIsTime = 3 # Which dim of the input refers to time for 3D inputs?
metadata$deltaTime = 14/365 # Aggregate the irregular time series at a bimonthly interval: 1/24 Yr
metadata$period = 1.0 # The period is 1 year
metadata$maxMissingRate = 0.99

prior = list()
prior$trendMaxOrder <- 0 # How wiggly is the trend line
prior$seasonMaxOrder <- 1 # How many cycles per year
