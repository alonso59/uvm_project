/*
=============================================================
    Programer      : Emanuel Murillo García
    Date           : 27 Jun 2023
    Last update    : 30 Jun 2023
=============================================================            
*/

class ram_port0_agent extends uvm_agent;
	`uvm_component_utils(ram_port0_agent)

	ram_port0_monitor monitor;

	function new(string name, uvm_component parent);
		super.new(name,parent);
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		monitor = ram_port0_monitor::type_id::create("monitor",this);
	endfunction : build_phase

	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		/*if(is_active == UVM_ACTIVE) begin
			driver.seq_item_port.connect(sequencer.seq_item_export);
		end
		*/
	endfunction : connect_phase

endclass