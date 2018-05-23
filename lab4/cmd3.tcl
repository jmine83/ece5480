read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist circuit-3.v
run_build_model circuit3
run_drc
remove_faults -all
add_faults -all
set_atpg -patterns 10
run_atpg -random
run_atpg full_sequential_only
run_simulation
set_faults -fault_coverage
report_faults -summary
