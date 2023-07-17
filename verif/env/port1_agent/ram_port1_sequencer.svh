/*
=============================================================
    Owner      : German Pinedo
    Last update    : 03 Jul 2023
=============================================================            
*/
class ram_port1_sequencer extends uvm_sequencer#(ram_port1_sequence_item);
	`uvm_component_utils(ram_port1_sequencer)
	// rand logic cs1;
	// rand logic [`ADDR_WIDTH-1:0] addr1;
	// rand logic [`DATA_WIDTH-1:0] dout1;

	function new(string name, uvm_component parent);
		super.new(name,parent);
	  endfunction

endclass