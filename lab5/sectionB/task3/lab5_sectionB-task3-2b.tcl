read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist lab5_circuit-2.v
run_build_model circuit_2
add_clocks 0 clk
run_drc
remove_faults -all
read_faults lab5_circuit-2_collapsed-fault-list.txt
set_atpg -capture_cycles 3
run_atpg fast_sequential_only
run_simulation
write_patterns lab5_circuit-2_fast-sequential_test-vectors.stil -format stil
