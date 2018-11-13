# ic_ancils
Initial conditions ancillary file creation for use in CPDN

Firstly calculate 1 day differences in theta from runs of the model for each month in a year.

Use split_files.sh to call cdo to split each month file into individual timestamps updating filenames in the script as required.

Update ic_pert.tcl to reflect the file names and full file paths and run in xancil with:
xancil -sc ic_pert.tcl
