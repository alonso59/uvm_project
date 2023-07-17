/*
=============================================================
    Owners      : Manuel Hernandez
    Last update    : 17 Jul 2023 by Manuel Hernandez
=============================================================            
*/

class ram_port1_monitor extends uvm_monitor;

	`uvm_component_utils(ram_port1_monitor)
	
	uvm_analysis_port#(ram_port1_sequence_item) mon_analysis_port;
	
	ram_port1_sequence_item port1_item;
	
	virtual ram_port1_intf port1_vif;
	
	function new(input string name, uvm_component parent);
		super.new(name, parent);
	endfunction
	
	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		mon_analysis_port = new("mon_analysis_port", this);
		if(!uvm_config_db#(virtual ram_port1_intf)::get(this, "", "port1_vif", port1_vif))
			`uvm_fatal(get_name(), "Failed to get ram_port1_intf")
		//`uvm_info(get_name(), "Build Phase", UVM_NONE)
	endfunction
	
	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		// Conectar interface?
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
		ram_port1_sequence_item txn;
    	`uvm_info(get_name(), "Run Phase", UVM_MEDIUM)
    	txn = ram_port1_sequence_item::type_id::create("txn");

		forever begin
			@(posedge port1_vif.clk1)begin
				txn.csb1 <= port1_vif.csb1;
				txn.addr1 <= port1_vif.addr1;
				txn.dout1 <= port1_vif.dout1; 
			end
			mon_analysis_port.write(txn);    // write to analisys port
		end
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