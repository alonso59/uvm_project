// Owner: German Pinedo

class ram_port1_sqr extends uvm_sequencer;
	`uvm_component_utils(ram_port1_sqr)
	rand logic cs1;
	rand logic [`ADDR_WIDTH-1:0] addr1;
	rand logic [`DATA_WIDTH-1:0] dout1;

	function new(string name="ram_port1_sqr");
		super.new(name);
	endfunction

endclass