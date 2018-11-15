# ic_ancils
Initial conditions ancillary file creation for use in CPDN

Firstly calculate 1 day differences in theta from runs of the model for each month in a year and put them into a directory names theta_diffs within this repository.

Use split_files.sh to call cdo to split each month file into individual timestamps updating filenames in the script as required. The split files will be output to a directory called input_files

Update ic_pert.tcl to reflect the file names and full file paths and run in xancil with:
xancil -sc ic_pert.tcl

The output ancillary files will be create in a directory called output_files.  Please ensure all directories are created.
