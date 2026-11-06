project_open PCAT-286 -revision PCAT-286
create_timing_netlist -model slow
read_sdc
update_timing_netlist
report_timing -setup -npaths 30 -detail summary -file worst_paths.txt
report_timing -hold -npaths 10 -detail summary -file worst_paths.txt -append
delete_timing_netlist
project_close
