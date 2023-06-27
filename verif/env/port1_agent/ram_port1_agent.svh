class ram_port1_agent extends uvm_agent;
	`uvm_component_utils(port0_agent)

	// HANDLERS for driver, sequencer, subscriber, monitor, scroeboard

	// uvm_sequencer #() ;

	function new(string name, uvm_component parent);
		super.new(name,parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
        // BUILD using factory object of driver, sequencer, subscriber, monitor, scroeboard
	endfunction

	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		// CONNECT using factory UVM driver, sequencer, subscriber, monitor, scroeboard
	endfunction

endclass