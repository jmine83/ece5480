read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist lab5_circuit-1.v
run_build_model circuit_1
run_drc
remove_faults -all
add_faults -all
run_atpg
run_simulation
