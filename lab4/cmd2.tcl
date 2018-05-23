read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist circuit-3.v
run_build_model circuit3
run_drc
remove_faults -all
add_faults -all
run_atpg fast_sequential_only
run_simulation
set_faults -fault_coverage
report_faults -summary
