/*
=============================================================
    Owners      : Grecia Montoya / Emanuel Murillo
    Last update    : 4 Jul 2023 by Emanuel Murillo
=============================================================            
*/

class ram_port0_agent extends uvm_agent;
	`uvm_component_utils(ram_port0_agent)

	ram_port0_monitor monitor;
	ram_port0_scb scb;
	ram_port0_subs subs;
	ram_port0_driver driver;
	ram_port0_sequencer sqr;

	function new(string name, uvm_component parent);
		super.new(name,parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		monitor = ram_port0_monitor::type_id::create("monitor",this);
		subs = ram_port0_subs::type_id::create("subs",this);
		scb = ram_port0_scb::type_id::create("scb",this);
		driver = ram_port0_driver::type_id::create("driver",this);
		sqr = ram_port0_sequencer::type_id::create("sqr",this);		
	endfunction 

	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		monitor.ana_port.connect(scb.ana_export);
		monitor.ana_port.connect(subs.analysis_export);
		//driver.seq_item_port.connect(sqr.seq_item_export);


		/*if(is_active == UVM_ACTIVE) begin
			driver.seq_item_port.connect(sequencer.seq_item_export);
		end
		*/
	endfunction 

endclass