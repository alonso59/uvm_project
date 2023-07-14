/*
=============================================================
    Owners      : German Pinedo / Manuel Hernandez
    Last update    : 05 Jul 2023 by Manuel Hernandez
=============================================================            
*/

class ram_port1_agent extends uvm_agent;
	`uvm_component_utils(ram_port1_agent)

	// HANDLERS for driver, monitor, scroeboard, subscriber
    ram_port1_driver port1_driver;
	ram_port1_sequencer port1_sequencer;

	ram_port1_monitor port1_monitor;
	ram_port1_scb port1_scb;
	ram_port1_subs port1_subs;
	
	// constructor
	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	// build phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
        // BUILD using factory object of driver, sequencer, subscriber, monitor, scroeboard
		port1_driver = ram_port1_driver::type_id::create("port1_driver",this);
		// port1_sequencer = uvm_sequencer #(ram_port1_sequence_item)::type_id::create("port1_sequencer",this);
		port1_sequencer = ram_port1_sequencer::type_id::create("port1_sequencer",this);

		port1_monitor = ram_port1_monitor::type_id::create("port1_monitor", this);
		port1_scb = ram_port1_scb::type_id::create("port1_scb", this);
		port1_subs = ram_port1_subs::type_id::create("port1_subs", this);

	endfunction

	// connect phase
	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		// CONNECT
		port1_driver.seq_item_port.connect(port1_sequencer.seq_item_export);
		
		port1_monitor.mon_analysis_port.connect(port1_scb.scb_analysis_export);
		port1_monitor.mon_analysis_port.connect(port1_subs.analysis_export);
	endfunction

endclass