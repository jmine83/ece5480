read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist lab5_circuit-1.v
run_build_model circuit_1
add_clocks 0 clk
run_drc
remove_faults -all
read_faults lab5_circuit-1_collapsed-fault-list.txt
set_atpg -capture_cycles 3
run_atpg fast_sequential_only
run_simulation
write_patterns lab5_circuit-1_fast-sequential_test-vectors.stil -format stil
