read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist lab5_circuit-1a.v
run_build_model circuit_1a
run_drc
remove_faults -all
read_faults lab5_circuit-1_collapsed-fault-list.txt
run_atpg basic_scan_only
run_simulation
write_patterns lab5_circuit-1_basic-scan_test-vectors.stil -format stil