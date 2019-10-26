# ------------------------------------------------
# This wrapper script calls the 'create.thresholds.from.file' function from the modified climdex.pcic.ncdf package
# to create thresholds, using data and parameters provided by the user.
# ------------------------------------------------
export DIR=/srv/ccrc/data53/z5239661/awap/dly
library(climdex.pcic.ncdf)
# list of one to three input files. e.g. c("a.nc","b.nc","c.nc")
input.files = c("/srv/ccrc/data53/z5239661/awap/dly/pre.1950-2009.nc","$DIR/tmax.1951-2009.nc", "$DIR/tmin.1950-2009.nc")

# list of variable names according to above file(s)
vars=c(tmax="tmax", tmin="tmin", prec="pre")

# output file name
output.file = "$DIR/output/thresholds.1950-2009.nc"

# author data
author.data=list(institution="University of New South Wales", institution_id="UNSW")

# reference period
base.range=c(1950,2009)

# number of cores to use (or FALSE)
parallel = FALSE

# print messages?
verbose=TRUE



######################################
# Do not modify without a good reason.

fclimdex.compatible=FALSE

create.thresholds.from.file(input.files,output.file,author.data,variable.name.map=vars,base.range=base.range,parallel=parallel,verbose=verbose,fclimdex.compatible=fclimdex.compatible)
