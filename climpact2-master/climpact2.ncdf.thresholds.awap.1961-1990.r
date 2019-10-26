# ------------------------------------------------
# This wrapper script calls the 'create.thresholds.from.file' function from the modified climdex.pcic.ncdf package
# to create thresholds, using data and parameters provided by the user.
# ------------------------------------------------
library(climdex.pcic.ncdf)
# list of one to three input files. e.g. c("a.nc","b.nc","c.nc")
input.files = c("/srv/ccrc/data53/z5239661/awap/input/pre/1961-2010/pre.1961-2010.nc","/srv/ccrc/data53/z5239661/awap/input/tmax/1961-2010/tmax.1961-2010.nc","/srv/ccrc/data53/z5239661/awap/input/tmin/1961-2010/tmin.1961-2010.nc")

# list of variable names according to above file(s)
vars=c(prec="ppt_grid",tmax="tmax_grid",tmin="tmin_grid")

# output file name
output.file = "/srv/ccrc/data53/z5239661/awap/dly/output/etccdi/thresholds/thresholds.1961-1990.nc"

# author data
author.data=list(institution="University of New South Wales", institution_id="UNSW")

# reference period
base.range=c(1961,1990)

# number of cores to use (or FALSE)
parallel =6

# print messages?
verbose=TRUE



######################################
# Do not modify without a good reason.

fclimdex.compatible=FALSE

create.thresholds.from.file(input.files,output.file,author.data,variable.name.map=vars,base.range=base.range,parallel=parallel,verbose=verbose,fclimdex.compatible=fclimdex.compatible)
