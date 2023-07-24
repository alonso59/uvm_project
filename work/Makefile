testname = ram_test_seq_base_port0
logs 	= ./logs
defines = XCELIUM
verb 	= UVM_MEDIUM

compile_switches = -f list.f -l ${logs}/comp.log +define+${defines}+ -access +rwc -timescale 1ns/1ps -sv
 
compile_switches_uvm = -f list.f -uvmhome CDNS-1.2 -uvm -l ${logs}/comp.log +define+${defines}+ +UVM_TESTNAME=${testname} +UVM_VERBOSITY=${verb} -access +rwc -timescale 1ns/1ps -sv

sim_uvm:
	xrun ${compile_switches_uvm}

simvision:
	simvision shm_db
