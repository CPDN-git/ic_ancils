# Load in initial job file

source "ic_creation_xancil.job"


# Create initial conditions ancil files

set n 58


puts "Starting loops"
for {set mon 1} {$mon <=12} {incr mon} {
	puts $mon
	set month [format %02s $mon]
	puts $month
        # Set the year variable based on the month
        set year [expr $mon == 12 ? 2002:2003]
	puts $year
	#initialise the initial condition number for the month
	set j 0
        puts "Starting ic loop"
	while {$j <= $n} {
                # Pad the initial condition number to the correct length
   		set i [format %06s $j]
		puts "Set ic number"
   		# Overwrite input and output file names
   		puts $i
		set config(ncfile) /storage/develop/ssparrow01/ic_ancils/input_files/ic_N144_${year}${month}_${i}.nc
  		set gridconfig(vert_namelist) /storage/develop/ssparrow01/ic_ancils/N144_levels.namelist
   		set ausrmulti(1,file_in) /storage/develop/ssparrow01/ic_ancils/input_files/ic_N144_${year}${month}_${i}.nc
		set ausrmulti(file_out) /storage/develop/ssparrow01/ic_ancils/output_files/ic_N144_${year}${month}_${i}
   		# Create namelist file from Tcl variables

   		create_namelist ic_pert.namelist

   		# Run executable to create ancillary file

   		run_exec

   		incr j
	}
}
