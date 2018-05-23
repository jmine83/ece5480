read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist lab5_circuit-3.v
run_build_model circuit_3
add_clocks 0 clk
run_drc
remove_faults -all
read_faults lab5_circuit-3_collapsed-fault-list.txt
set_atpg -capture_cycles 3
run_atpg full_sequential_only
run_simulation
write_patterns lab5_circuit-3_full_sequential_test-vectors.stil -format stil
