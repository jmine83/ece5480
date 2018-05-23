read_netlist /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v -library
read_netlist lab5_circuit-1a.v
run_build_model circuit_1a
run_drc
remove_faults -all
add_faults U11 -stuck 0
add_faults PO2 -stuck 1
run_atpg basic_scan_only
run_simulation
write_patterns lab5_sectionA-task4.stil -format stil
