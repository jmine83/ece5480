read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist lab5_circuit-1.v
run_build_model circuit_1
add_clocks 0 clk
run_drc
remove_faults -all
add_faults U11 -stuck 0
add_faults PO2 -stuck 1
set_atpg -capture_cycles 3
run_atpg full_sequential_only
run_simulation
write_patterns lab5_sectionA-task6c.stil -format stil
