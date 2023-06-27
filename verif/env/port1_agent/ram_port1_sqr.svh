class ram_port1_sqr extends uvm_sequence_item;

	rand logic csb1;
	rand logic [`ADDR_WIDTH-1:0] addr1;
	rand logic [`DATA_WIDTH-1:0] dout1;

	function new(string name="ram_port1_sqr");
		super.new(name);
	endfunction

	`uvm_object_utils_begin(ram_port1_sqr)
	`uvm_field_int(csb1,UVM_HEX)
	`uvm_field_int(addr1,UVM_HEX)
	`uvm_field_int(dout1,UVM_HEX)
	`uvm_object_utils_end

endclass