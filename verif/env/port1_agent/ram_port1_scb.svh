/*
=============================================================
    Owners      : Manuel Hernandez
    Last update    : 10 Jul 2023 by Manuel Hernandez
=============================================================            
*/

class ram_port1_scb extends uvm_scoreboard;
	
	`uvm_component_utils(ram_port1_scb)
	
	uvm_analysis_imp#(ram_port1_sequence_item) scb_analysis_export;
	uvm_tlm_analysis_fifo#(ram_port1_sequence_item) analysis_fifo;
	
	function new(input string name, uvm_component parent);
		super.new(name, parent);
	endfunction
	
	virtual function void write(ram_port1_sequence_item port1_item);
      	`uvm_info(get_name(), "Received data", UVM_MEDIUM)
      	//port1_item.print(uvm_default_line_printer);
  	endfunction
	
	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		scb_analysis_export = new("scb_analysis_export", this);
		analysis_fifo = new("analysis_fifo", this);
		//`uvm_info(get_name(), "Build Phase", UVM_NONE)
	endfunction
	
	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		analysis_fifo.analysis_export.connect(scb_analysis_export);
		//`uvm_info(get_name(), "Connect Phase", UVM_NONE)
	endfunction
	
	virtual function void end_of_elaboration_phase(uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		//`uvm_info(get_name(), "End of elaboration Phase", UVM_NONE)
	endfunction
	
	virtual function void start_of_simulation_phase(uvm_phase phase);
		super.start_of_simulation_phase(phase);
		//`uvm_info(get_name(), "Start of simulation Phase", UVM_NONE)
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		//`uvm_info(get_name(), "Run Phase", UVM_NONE)
	endtask
	
	virtual function void extract_phase(uvm_phase phase);
		super.extract_phase(phase);
		//`uvm_info(get_name(), "Extract Phase", UVM_NONE)
	endfunction
	
	virtual function void check_phase(uvm_phase phase);
		super.check_phase(phase);
		//`uvm_info(get_name(), "Check Phase", UVM_NONE)
	endfunction
	
	virtual function void report_phase(uvm_phase phase);
		super.report_phase(phase);
		//`uvm_info(get_name(), "Report Phase", UVM_NONE)
	endfunction
	
	virtual function void final_phase(uvm_phase phase);
		super.final_phase(phase);
		//`uvm_info(get_name(), "Final Phase", UVM_NONE)
	endfunction
	
endclass